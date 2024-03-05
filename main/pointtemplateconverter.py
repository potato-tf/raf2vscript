import sys

# a recursive function that returns keyvalue pairs in a list
def ParseTree(popfile, index):
    indexnumber = index
    keyvaluepairs = []
    key = ''
    value = ''
    iskey = True
    inquote = False
    insubtree = False
    depth = 0               # used to determine how many layers of brackets we're in after calling the function

    for i in popfile[index:]:
        indexnumber = indexnumber + 1

        # skip these characters
        if i == '{':
            depth += 1
            if depth == 1:
                insubtree = True
                # call this function again when we get to a subtree and pass the list of keyvalues through, index is at the curly bracket
                value = ParseTree(popfile, indexnumber)
                keyvaluepairs.append({key : value})
                key = ''
                value = ''
                # need this to be True
                iskey = True
            continue

        if i == '}':
            depth -= 1
            if depth == 0:
                insubtree = False
                continue
            # index started at the last open curly bracket, exit the function at the first closing curly bracket
            if depth == -1:
                return keyvaluepairs

        # keep quotes
        if i == '"':
            inquote = not inquote

        if insubtree == False:
            if inquote == False:
                if i.isspace() == False:
                    #if the index character is not whitespace, write character to key string, or value if its not a key
                    if iskey == True:
                        key = key + i
                    else:
                        value = value + i

                # if key is being written and we reach a white space, end the key and start value
                if key != '' and i.isspace() == True:
                    iskey = False
                # when we each the end of the value, update dictionary and reset key and value buffers
                if value != '' and i.isspace() == True:
                    iskey = True
                    if value != '{':
                        keyvaluepairs.append({key : value})
                        key = ''
                        value = ''

            #if we're inside a quote, include spaces
            else:
                if iskey == True:
                    key = key + i
                else:
                    value = value + i

    #if you've made it here, the end of the popfile has been reached
    return keyvaluepairs

#extracts pointtemplates from ParseTree's return
def getpointtemplates(pop, keylist):
    for i in pop:
        key = list(i)[0]
        value = i.get(key)
        if key.lower() == "pointtemplates":
            keylist.append(i)
        if isinstance(value, list):
            getpointtemplates(value, keylist)
    return keylist

#print pointtemplates in new format
def convertpointtemplates(pop, indentationnumber, depth):
    newindent = 0
    index = 0
    uniqueoutputs = {}
    for i in pop:
        key = list(i)[0]
        value = i.get(key)
        print('\t' * indentationnumber, end = '')
        if isinstance(value, list):
            if depth == 2 and key.lower() not in ["keepalive", "nofixup", "removeifkilled"]:
                print("[" + str(index) + "] =")
                print('\t' * indentationnumber, end = '{\n')
                indentationnumber += 1
                print('\t' * indentationnumber, end = '')
                print(key, end = ' =\n')
                print('\t' * indentationnumber, end = '{\n')
                indentationnumber += 1
                convertpointtemplates(value, indentationnumber, depth + 1)
                indentationnumber -= 1
                print('\t' * indentationnumber, end = '},\n')
                indentationnumber -= 1
                print('\t' * indentationnumber, end = '},\n')
                index += 1
            else:
                if key.lower() == "pointtemplates":
                    print("PointTemplates <- ")
                else:
                    print(key, end = ' =\n')
                print('\t' * indentationnumber, end = '{\n')
                indentationnumber += 1
                newindent += 1
                convertpointtemplates(value, indentationnumber, depth + 1)
                indentationnumber -= 1
                newindent -= 1
                if newindent == 0:
                    if depth != 0:
                        print('\t' * indentationnumber, end = '},\n')
                    else:
                        print('\t' * indentationnumber, end = '}')
        else:
            if key[0] == '"' and key[-1] == '"':
                key = key[1:-1]
            if (key.lower().startswith('on') or key.lower().startswith('ou')) and (value.count(',') == 2 or value.count(',') == 3 or value.count(',') == 4):
                if key in uniqueoutputs.keys():
                    uniqueoutputs.update({key : uniqueoutputs[key] + 1})
                else:
                    uniqueoutputs.update({key : 1})
                print('"' + key + '#' + str(uniqueoutputs[key]) + '"', end = '')
                print(" : ", end = '')
                if value[0] == '"' and value[-1] == '"':
                    value = value[1:-1]
                newoutput = value.split(',')
                if len(newoutput) == 3:
                    newoutput.append("0")
                    newoutput.append("-1")
                if len(newoutput) == 4:
                    if newoutput[3] == '':
                        newoutput[3] = "0"
                    newoutput.append("-1")
                if len(newoutput) == 5:
                    if newoutput[4] == '':
                        newoutput[4] = "-1"
                print('"' + ','.join(newoutput) + '",')
            else:
                print(key, end = '')
                print(" = ", end = '')
                newvalue = value.replace('\\', '/')
                print(newvalue + ',')

# import tkinter as tk
# from tkinter import filedialog

# root = tk.Tk()
# root.withdraw()
import os
# file_path = filedialog.askopenfilename()

popfiles = {}
for _, _, files in os.walk('./'):
    i = 0
    for file in files:
        if not file.endswith('.pop'): continue
        i += 1
        print(i, f': {file}')
        popfiles[i] = file
        
pop = input("enter the number for the file you would like to convert: ")
popfile = open(popfiles.get(int(pop)),'r', errors='replace', encoding='utf-8').read()

# Remove comments
while popfile.find('//') != -1:
    popfile = popfile[:popfile.find('//')] + popfile[popfile.find('\n', popfile.find('//')):]

# Remove [$SIGSEGV] tags
popfile = popfile.replace('[$SIGSEGV]', '')

parsed = ParseTree(popfile, 0)

keylist = getpointtemplates(parsed, [])

# Save the current stdout so that we can revert sys.stdou after we complete
# our redirection
stdout_fileno = sys.stdout

# Redirect sys.stdout to the file
output = open(popfiles.get(int(pop))[:-4] + "_point_templates.nut", "a+")
sys.stdout = output

convertpointtemplates(keylist, 0, 0)

# Close the file
sys.stdout.close()
# Restore sys.stdout to our old saved file handler
sys.stdout = stdout_fileno