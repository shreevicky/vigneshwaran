list1 = (1,2,3,4,5,6,7,8,9)
count_even = 0
count_odd  = 0
for x in list1 :
  if x % 2 == 0 :
    count_even += 1
  else:
    count_odd += 1
print("number the even numbers : ", count_even)
print("number the odd numbers : " , count_odd)