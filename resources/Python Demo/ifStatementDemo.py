# if statements are single alternative decision structures

"""
    structure of an if statement:
    
        if condition:
            statement(s)
            
    statements are going to execute only if the condition is true
    
    boolean expressions are built using relational operators:
        > greater than
        < less than 
        >= greater than or equal to
        <= less than or equal to
        == is equal to (don't confuse with = )
        ! logical not (flips the value of a boolean expression)
        != is not equal to
        and - logical and
        or - logical or
"""

# ask the user to enter a number
number = int(input("Enter a number: "))

# if statement that displays a message only if the number is even
if number % 2 == 0:
    print("This number is even!")
    # this message only prints if the number is evenly divsible by 2

# display the value of the number entered
print(f"You entered the number: {number}")