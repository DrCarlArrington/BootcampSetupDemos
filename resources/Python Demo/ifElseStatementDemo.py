"""
    if / else statements are known as dual-alternative decision structures
    
    structure:
    
        if condition:
            statement(s)
        else:
            statement(s)
            
    NO NEED TO PUT CONDITIONS ON THE ELSE BLOCK!
    (Python understands that the if is false)
"""

# ask the user to enter a number
number = int(input("Enter a number: "))

# if/else statement that displays a message if the number is even or odd
if number % 2 == 0:
    print("This number is even!")
    # this message only prints if the number is evenly divsible by 2
else:
    # this message only prints if the number is odd
    print("This number is odd!!") 

# display the value of the number entered
print(f"You entered the number: {number}")