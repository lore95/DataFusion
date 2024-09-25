import json

file_name = 'values.txt'

def save(input_value, file_name):
    with open(file_name, 'w') as f:
        f.write(input_value)

