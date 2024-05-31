def copy_file(src_file, dest_file):
    with open(src_file, 'r') as source:
        with open(dest_file, 'w') as destination:
            for line in source:
                destination.write(line.upper())
