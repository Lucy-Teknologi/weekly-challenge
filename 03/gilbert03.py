import math

def reflectiveNumber(number : int):
    reversed = 0
    count = number
    
    while(count != 0):
        reversed = reversed * 10 + count % 10
        count = math.floor(count / 10)
    
    return reversed == number
