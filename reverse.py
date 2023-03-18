name = str(input("enter the reverse word : "))
for char in range(len(name) -1, -1, -1):
    print(name[char], end ="")
