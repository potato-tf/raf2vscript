import re

filename = "itemdefs.txt"  # Replace with the path to your input file
constants = []
output_file = "itemdef_dict.py"
varname = "itemdefs"

with open(filename, "r") as file:
    lines = file.readlines()

import re

for i in range(len(lines)):
    line = lines[i].strip()
    if re.search(r'!\s*scope="row"\s*\|\s*(\d+)', line):
        value_match = re.search(r'!\s*scope="row"\s*\|\s*(\d+)', line)
        name_match = re.search(r'\|\s*(tf_[^\|]+)', lines[i+1].strip())
        if value_match and name_match:
            constant_name = name_match.group(1).strip()
            additional_string = lines[i+1].split('|')[1].split('(')[0].strip()
            full_constant_name = f'{constant_name}^{additional_string}'

            constant_value = int(value_match.group(1))  # Convert to integer for sorting

            constants.append((constant_value, f'"{constant_name}" : {constant_value},\n'))  # Store as tuple for sorting
            constants.append((constant_value, f'"{additional_string.lower()}" : {constant_value},\n'))  # Store as tuple for sorting

# Sort the constants based on constant_value
constants.sort(key=lambda x: x[0])

# Remove duplicate entries
constants = list(dict.fromkeys(constants))

with open(output_file, "w") as file:

    constants = [constant[1] for constant in constants]  # Retrieve the sorted constants
    file.write(f'{varname} = {{\n')
    file.writelines(constants)
    file.write('\n}')

