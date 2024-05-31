def process_file(input_file, output_file):
    with open(input_file, 'r') as file:
        text = file.read()
        processed_text = text.replace("a", "").replace("the", "").replace("an", "")
    
    with open(output_file, 'w') as file:
        file.write(processed_text)
