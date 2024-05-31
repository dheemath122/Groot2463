def update_student_records(master_file, transaction_file, updated_file):
    with open(master_file, 'r') as master, open(transaction_file, 'r') as transaction, open(updated_file, 'w') as updated:
        master_data = master.readlines()
        transaction_data = transaction.readlines()

        master_index = 0
        transaction_index = 0

        while master_index < len(master_data) and transaction_index < len(transaction_data):
            master_roll, master_name = master_data[master_index].strip().split(':')
            transaction_roll, action = transaction_data[transaction_index].strip().split(':')

            if int(master_roll) < int(transaction_roll):
                updated.write(master_data[master_index])
                master_index += 1
            elif int(master_roll) > int(transaction_roll):
                if action == 'A':
                    updated.write(transaction_data[transaction_index])
                transaction_index += 1
            else:
                if action == 'A':
                    updated.write(transaction_data[transaction_index])
                master_index += 1
                transaction_index += 1
        
        # Copy remaining records from master file if any
        while master_index < len(master_data):
            updated.write(master_data[master_index])
            master_index += 1
        
        # Copy remaining records from transaction file if any (only for 'A' actions)
        while transaction_index < len(transaction_data):
            transaction_roll, action = transaction_data[transaction_index].strip().split(':')
            if action == 'A':
                updated.write(transaction_data[transaction_index])
            transaction_index += 1
