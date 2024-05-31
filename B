def append_file(source_file, target_file):
    try:
        with open(source_file, 'r') as source:
            source_content = source.read()
        with open(target_file, 'a') as target:
            target.write("\n")  # Add a new line before appending
            target.write(source_content)
        print(f"Contents of {source_file} appended to {target_file} successfully.")
    except FileNotFoundError:
        print("File not found.")
