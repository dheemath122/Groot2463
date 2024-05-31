def store_names(file_name, names):
    with open(file_name, 'w') as file:
        for name in names:
            file.write(name + '\n')

def display_nth_name(file_name, n):
    with open(file_name, 'r') as file:
        names = file.readlines()
        if 0 < n <= len(names):
            print(f"The {n}th name in the list is: {names[n-1].strip()}")
        else:
            print("Invalid input. Please enter a valid index.")
