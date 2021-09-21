# ask the user to enter the projected amount of total sales
totalSales = float(input("Enter the projected total sales: $"))

# calculate the profit (23%)
profit = totalSales * 0.23

#display the total sales
print(f"Total sales: ${totalSales:,.2f}")

#display the profit
print(f"Profit: ${profit:,.2f}")