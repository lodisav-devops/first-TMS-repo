import random

lower_limit = int(input("Please enter the number of the lower limit: "))
upper_limit = int(input("Please enter the number of the upper limit: "))
random_number = random.randint(lower_limit, upper_limit)

print("You have 3 attempts to guess the number")

number_of_attempts = [1, 2, 3]

for i in number_of_attempts:
   print(f"Attempt № {i}")
   entered_number = int(input("Please enter your number: "))
   if entered_number < lower_limit or entered_number > upper_limit:
      print("You entered a number out of range. Try again please!")
   elif entered_number == random_number:
      print(f"Congratulations!!! You guessed the number on the {i} attempt")
      break
   else:
      def last_fail():
         if i == 3:
            print("Sorry you didn't guess the number!!!)")
            print("You have used up all your attempts!!!")
            return
         elif entered_number < random_number:
            print(f"Sorry you didn't guess the number (this number greater than {entered_number}), attempt again")
         else:
            print(f"Sorry you didn't guess the number (this number less than {entered_number}), attempt again")
      last_fail() 