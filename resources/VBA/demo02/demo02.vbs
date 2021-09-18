Attribute VB_Name = "Module2"
Sub cereal():
    ' make Worksheet variables
    Dim sheet1, sheet2 As Worksheet
    
    ' set the values of the worksheet variables
    Set sheet1 = Worksheets("Sheet1")
    Set sheet2 = Worksheets("Sheet2")
    
    ' Populate the column headers in Sheet1 and Sheet2
    sheet2.Range("A1").Value = "Brand Names"
    sheet2.Range("C1").Value = "Avg. Calories"
    
    ' declare a variable to hold the running total amount of calories
    Dim total As Integer
    
    ' initialize the total to 0
    total = 0
    
    ' use a for loop to populate the brand names in Sheet2
    For i = 2 To 66
        'Set the value of the brand name in the A column
        sheet2.Range("A" & i).Value = sheet1.Range("A" & i).Value
        ' add on to the running total of calories
        total = total + sheet1.Range("C" & i).Value
    Next i
    
    ' calculate the average calories by dividing the running total
    ' by the number of cereals (65)
    sheet2.Range("C2").Value = total / 65

End Sub
