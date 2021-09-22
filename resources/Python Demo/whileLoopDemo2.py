# while loops can also be used to validate input
repeat = int(input("Enter a value between 1 and 5: "))

# when validating, use the while loop to check for bad data
# in this case, we will only loop when the value is less than 1 or greater than 5
while repeat < 1 or repeat > 5:
    # display an error message
    print("\nERROR: Number entered is out of range of 1-5. Try again.")
    # and get another input of repeat
    repeat = int(input("\nEnter a value between 1 and 5: "))

# once valid data is entered, display the message
while repeat > 0:
    print("This is python")
    repeat -= 1