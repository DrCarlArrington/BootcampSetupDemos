# declare a running total to hold the total of numbers entered
total = 0
number = 1

while number > 0:
     # get the input of a number
    number = int(input("Enter a number, enter a negative number or 0 to stop: "))

    # add on to the total only if the number is positive
    if number > 0:
        total += number # same as total = total + number

    # display the current total of all of the numbers entered
    print(f"Current total: {total}")