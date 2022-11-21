import random

def continue_game():
   question_continue = input("If you want to continue the game please answer (yes or no): ")
   if question_continue == "yes":
      game_number()
   elif question_continue == "no":
      print("Thanks for playing!")
   else:
      print("You entered an invalid value, please try again!")
      continue_game()

def game_number():
   try:
      lower_limit = int(input("Please enter an integer lower limit: "))
      upper_limit = int(input("Please enter an integer upper limit: "))
      random_number = random.randint(lower_limit, upper_limit)
      print("You have 3 attempts to guess the number!")
      number_of_attempts = [1, 2, 3]

      for i in number_of_attempts:
         print(f"Attempt № {i}")
         entered_number = int(input("Please enter your number: "))
         if entered_number < lower_limit or entered_number > upper_limit:
            if i == 3:
               print(f"You entered a number out of range after {i} attempts!")
               print("You have used up all your attempts!!!")
               break
            else:
               print("You entered a number out of range. Try again please!")
         elif entered_number == random_number:
            print(f"Congratulations!!! You guessed the number on the {i} attempt!")
            break
         else:               
            if i == 3:
               print(f"Sorry you didn't guess the number!!!, Hidden number - {random_number}!")
               print("You have used up all your attempts!!!")
               break
            elif entered_number < random_number:
               print(f"Sorry you didn't guess the number (this number greater than {entered_number}), attempt again!")
            else:
               print(f"Sorry you didn't guess the number (this number less than {entered_number}), attempt again!")
      continue_game()
   except:
      print("You entered not an integer! Be careful, try again please!")
      continue_game()

game_number()
