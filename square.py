def square_num(n):
    return n * n
nums = [4,5,2,9]
print ( "original lisit :  ", nums)
result = map(square_num, nums )
print("square the element of the said list using map(): ")
print (list(result))