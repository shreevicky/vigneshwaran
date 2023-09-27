import random
user_choice = int(input("enter the choice : "
                        "1.0 for stone "
                        "2.1 for paper "
                        "3.2 for scissor "))
if user_choice >=3 or user_choice < 0:
    print("you enter the invalid number ")
else:
    computer_choice = random.randint(0,2)
    print("computer choice :")
    print(computer_choice)
    if computer_choice == user_choice:
        print("It's draw ")
    elif computer_choice == 0 and user_choice == 2:
        print("you loss the game ")
    elif user_choice == 0 and computer_choice == 2:
        print(" you win the game ")
    elif computer_choice > user_choice:
        print(" you loss the game ")
    elif user_choice > computer_choice:
        print(" you win the game ")