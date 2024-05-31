def merge_files(file1, file2, target_file):
    with open(file1, 'r') as f1, open(file2, 'r') as f2, open(target_file, 'w') as target:
        lines1 = f1.readlines()
        lines2 = f2.readlines()
        max_lines = max(len(lines1), len(lines2))

        for i in range(max_lines):
            if i < len(lines1):
                target.write(lines1[i])
            if i < len(lines2):
                target.write(lines2[i])
