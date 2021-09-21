# ask the user to enter the charge for the food
mealCost = float(input("How much was the meal? $"))

# calculate the tip
tip = mealCost * 0.15 # 15% tip

# calculate the sales tax
salesTax = mealCost * 0.07 # 7% sales tax

# calculate the total
mealTotal = mealCost + tip + salesTax

# display the cost of the meal
print(f"Meal Cost: ${mealCost:,.2f}")
# display the amount of the tip
print(f"Gratuity: ${tip:,.2f}")
# display the amount of the sales tax
print(f"Sales Tax: ${salesTax:,.2f}")
# display the total amount of the meal
print(f"Total: ${mealTotal:,.2f}")