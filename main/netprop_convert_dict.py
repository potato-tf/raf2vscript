# Initialize an empty dictionary to store key-value pairs
data_dict = {}

# Open the text file for reading
with open('netprops.txt', 'r') as file:
    # Iterate through each line in the file
    for line in file:
        if not line.startswith('Member: m_'): continue
        # Split the line by whitespace
        parts = line.split('(')
        
        if parts[2].startswith('type'):
            # Extract the key and value type
            key = f'{parts[0].split(':', maxsplit=1)[1].strip()}'
            value_type = f'{parts[2].split()[1].removesuffix(')')}'

            # Add the key-value pair to the dictionary
            data_dict[key] = value_type
            # input(data_dict)

# Print the resulting dictionary
print(data_dict)

output = 'netprop_dict.py'
with open(output, "w") as file:

    file.write(f'propdict = {{\n')
    for key, value in data_dict.items():
        file.write(f'"{key}": "{value}",\n')
    file.write('}')
