String = input ("Enter the string : ")
reverse = ''
for i in range (len(String),0,-1 ):
    reverse += String[i-1]
print ('The reverse string is ', reverse)