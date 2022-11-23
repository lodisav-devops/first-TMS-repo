def append_data():
    ''' This function apps data to the datafile '''
    my_file = "data.txt"
    change_file = open(my_file, mode='a', encoding='utf_8')
    input_host = input("Please enter name of host: ")
    input_username = input("Please enter username: ")
    input_password = input("Please enter password: ")
    new_string = f"Host: {input_host}, Username: {input_username}, Password: {input_password}\n"
    change_file.write(new_string)
    change_file.close()
    print("Data added successfully!")
    continue_work()    

def read_data(input_data):
    ''' This function reads data from a datafile at the given host or username '''
    my_file = "data.txt"
    read_file = open(my_file, mode='r', encoding='utf_8')
    text_file = read_file.read()
    read_file.close()    
    if input_data == "host":
        search_data = f"Host: "+input(f"Please enter a {input_data} to search: ")
    else:
        search_data = f"Username: "+input(f"Please enter a {input_data} to search: ")        
    amount_file = text_file.count(search_data)
    if amount_file == 0:
        print(f"This {input_data} is not in the data")
        continue_work()
    else:
        print(f"This {input_data} is in the datafile:")
        read_file = open(my_file, mode='r', encoding='utf_8')
        for string in read_file:
            if search_data in string:
                print(string.strip())
        read_file.close()
    continue_work()

def file_handling():
    ''' Basic function for this program '''
    question_append = input("Do you want to append data to the file?\nPlease enter 'yes' or 'no': ")
    if question_append == "yes":
        append_data()
    elif question_append == "no":
        def read_question():
            question_read = input("Maybe you want to read the data in a file?\nPlease enter 'yes' or 'no': ")
            if question_read == "yes":
                def host_or_username():
                    question_host_username = input("Do you want to read data by host or by username?\nPlease enter 'host' or 'username': ")
                    if question_host_username == "host" or question_host_username == "username":
                        read_data(question_host_username)
                    else:
                        print("You entered an invalid value, please try again!")
                        host_or_username()
                host_or_username()
            elif question_read == "no":
                print("Thanks for work!")
            else:
                print("You entered an invalid value, please try again!")
                read_question()
        read_question()
    else:
        print("You entered an invalid value, please try again!")
        continue_work()

def continue_work():
    ''' Function to continue or stop working with a file '''
    question_continue = input("Please enter if you want to continue working with the file ('yes' or 'no'): ")
    if question_continue == "yes":
        file_handling()
    elif question_continue == "no":
        print("Thanks for work!")
    else:
        print("You entered an invalid value, please try again!")
        continue_work()

file_handling()
