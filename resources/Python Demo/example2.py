# ask the user to enter the total square feet in a tract of land
totalSqFt = float(input("Enter the total square feet in a tract of land: "))

# calculate the acres (1 acre = 43560 square feet)
acres = totalSqFt / 43560

# display the acres in the tract of land
print(f"Total Square Feet: {totalSqFt:,.2f} equals {acres:,.2f} acres")