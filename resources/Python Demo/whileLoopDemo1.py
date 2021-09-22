"""
    While loops are pretest loops
    
    structure:
    
        while condition:
            statement(s)
            
    ** at least one of the statements needs to update the condition **
    ** if you don't you can create an infinite loop **
    
    while loops can execute from 0 up to many times
"""

# loop control variable
repeat = 5 # used to control the loop we define below

# while loop example
while repeat > 0:
    # test to see if the value of repeat is greater than zero
    print("This is python")

    # update the condition by changing the value of repeat
    repeat = repeat - 1

    # using combined assignment
    repeat -= 1 # same as repeat = repeat - 1
    # can also be used with +=, *=, /=, and %= (only for ints)
