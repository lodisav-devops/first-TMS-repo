def append_data():
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

def read_data_host():
    my_file = "data.txt"
    read_file = open(my_file, mode='r', encoding='utf_8')
    host_search = input("Please enter a hostname to search: ")
    text_file = read_file.read()
    read_file.close()
    amount_host_file = text_file.count(host_search)
    if amount_host_file == 0:
        print("This hostname is not in the data")
        file_handling()
    else:
        print("This hostname is in the datafile:")
        read_file = open(my_file, mode='r', encoding='utf_8')
        for string in read_file:
            if host_search in string:
                print(string.strip())
        read_file.close()
    continue_work()

def read_data_username():
    my_file = "data.txt"
    read_file = open(my_file, mode='r', encoding='utf_8')
    username_search = input("Please enter a username to search: ")
    text_file = read_file.read()
    read_file.close()
    amount_username_file = text_file.count(username_search)
    if amount_username_file == 0:
        print("This username is not in the data")
        file_handling()
    else:
        print("This username is in the datafile:")
        read_file = open(my_file, mode='r', encoding='utf_8')
        for string in read_file:
            if username_search in string:
                print(string.strip())
        read_file.close()
    continue_work()

def file_handling():
    question_append = input("Do you want to append data to the file?\nPlease enter 'yes' or 'no': ")
    if question_append == "yes":
        append_data()
    elif question_append == "no":
        def read_question():
            question_read = input("Maybe you want to read the data in a file?\nPlease enter 'yes' or 'no': ")
            if question_read == "yes":
                def host_or_username():
                    question_host_username = input("Do you want to read data by host or by username?\nPlease enter 'host' or 'username': ")
                    if question_host_username == "host":
                        read_data_host()
                    elif question_host_username == "username":
                        read_data_username()
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
        question_continue = input("Please enter if you want to continue working with the file ('yes' or 'no'): ")
        if question_continue == "yes":
            file_handling()
        elif question_continue == "no":
            print("Thanks for work!")
        else:
            print("You entered an invalid value, please try again!")
            continue_work()

file_handling()
