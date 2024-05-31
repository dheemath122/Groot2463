def read_blood_donors(file_name):
    eligible_donors = []

    with open(file_name, 'r') as file:
        for line in file:
            name = line[:20].strip()
            address = line[20:60].strip()
            age = int(line[60:62])
            blood_type = int(line[62])

            if age < 25 and blood_type == 2:
                eligible_donors.append((name, address, age, blood_type))

    return eligible_donors
