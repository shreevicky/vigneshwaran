Str   = "ThequickBrowFox"
lower = 0
upper = 0 
for i in Str :
    if(i.islower()):
        lower +=1
    else:
        upper +=1
print("The number of lowercase : ", lower)
print("The number of uppercase : ", upper)