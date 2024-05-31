import pickle

class Employee:
    def __init__(self, emp_code, emp_name, join_date, salary):
        self.emp_code = emp_code
        self.emp_name = emp_name
        self.join_date = join_date
        self.salary = salary

def serialize_employee(emp, file_name):
    with open(file_name, 'wb') as file:
        pickle.dump(emp, file)

def deserialize_employee(file_name):
    with open(file_name, 'rb') as file:
        emp = pickle.load(file)
    return emp
