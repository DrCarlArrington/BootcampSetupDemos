"""
    Function structure:
    
        def functionName(parameter list):
            statement(s)
            
    ! functions have to be declared before they can be used
    
    ! if you want function to accept data, then you put information in between the parenthesis
        data is passed to functions by using parameters
        
    ! if you want your function to return data, then use a return statement in the body
    of the function
    
    ! in order to use a function, call the function by using its name, and matching parameters
"""

# function that displays a simple message
def greeting():
    # simple output statement
    print("Hello there!! You called the greeting() function")


# statements that run the program
print("This is a quick demo of functions")
print("We will now call the greeting function")
# call the greeting function
greeting()
print("The program can end now.")