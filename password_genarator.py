import random

num = ["1","2","3","4","5","6","7","8","9","0"]
sysmbol = ["!","@","#","$","%","^","&","*","(",")"]
letter = ['A','B','C','D','E''F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Z']
user_choice  =  int(input("how many letter you want in your password : "))
user_sysmbol = int(input("how many sysmbol you have in your password : "))
user_letter = int(input("how many letter youj have in your pasword : "))
password = [ ]
for i in range(1,user_choice+1):
    char = random.choice(num)
    password += char
for i in range(1,user_sysmbol+1):
    char = random.choice(sysmbol)
    password += char
for i in range(1,user_letter+1):
    char = random.choice(letter)
    password += char

random.shuffle(password)
#print(password)
password_str = " "
for char in password:
    password_str += char
print(password_str)