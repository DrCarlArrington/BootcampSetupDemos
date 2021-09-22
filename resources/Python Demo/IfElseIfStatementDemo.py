"""
    multiple alternative decision structures are our if / else if statements:
    
    structure of an if/else if:
    
        if condition:
            statements
        elif condition:
            statements
        elif condition:
            statements
        else:
            statements

    You can have as many else ifs in between an if and an else as you need
"""

# have the user enter in a number
a = int(input("Enter a number: "))
# have the user enter in another number       
b = int(input("Enter another number: "))

# use an if / else if to tell the relationship between the numbers
if a > b:
    # a can be greater than b
    print(f"{a} is greater than {b}")
elif b > a:    
    # b can be greater than a
    print(f"{b} is greater than {a}")
else:
    # both numbers can be equal
    print(f"{a} is equal to {b}")