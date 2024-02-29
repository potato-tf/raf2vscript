import re
def parse_script(input_file):
    with open(input_file, 'r') as file:
        lines = file.readlines()
    
    new_lines = []
    for line in lines:
        if '//' in line:
            line = line.split('//')[0]
        new_lines.append(line)
    
    content = ''.join(new_lines)
   
    content = re.sub(r'NoFixup (\d+)', r'NoFixup = true,', content)
    content = re.sub(r'(\w+)\s+(\w+)\s*{(.*?)\}', r'\1 = {\n\2 = {\3},\n},', content, flags=re.DOTALL)
    content = re.sub(r'"(.*?)"\s+"(.*?)"', r'\1 = "\2",', content)
    content = re.sub(r'"(.*?)"\s*=\s*"?(.*?)"?[\n#]', r'\1 = "\2"\n', content)
    content = re.sub(r'"(.*?)"\s*=\s*Vector\((.*?)\)', r'\1 = Vector(\2)', content)
    content = re.sub(r'OnCapTeam1', r'OnCapTeam1#', content)
    content = content.replace('{', '{\n').replace('}', '\n}')
    content = content.replace(';', ',')
    content = content.replace('//', '#')
    
    return content

def write_script(output_file, content):
    with open(output_file, 'w') as file:
        file.write(content)
        
input_file = 'bauernhof_pointtemplates.pop'
output_file = 'bauernhof_converted.nut'

parsed_content = parse_script(input_file)
write_script(output_file, parsed_content)
