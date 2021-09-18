Attribute VB_Name = "Module1"
Sub Armada():
    ' create worksheet variables
    Dim sheet1, sheet2 As Worksheet
    
    ' set the worksheet variables
    Set sheet1 = Worksheets("Sheet1")
    Set sheet2 = Worksheets("BreakDown")
    
    ' average function on soldiers
    ' Print the Average amount of soldiers in Breakdown sheet
    Dim avg_soldiers As Integer
    avg_soldiers = WorksheetFunction.Average(sheet1.Range("D2:D11"))
    sheet2.Range("A1").Value = "Avg Amount of Soldiers"
    sheet2.Range("A2").Value = avg_soldiers
    
    ' maximum amount of men out of all armadas
    Dim maximum_men As Integer
    maximum_men = WorksheetFunction.Max(sheet1.Range("F2:F11"))
    sheet2.Range("B1").Value = "Max Amount of Men"
    sheet2.Range("B2").Value = maximum_men
    
    ' Find the row number of the Armada with 415 Gunpowder
    ' If match_type is 1, Match finds the largest value that is less than or equal to lookup_value. Lookup_array must be placed in ascending order: ...-2, -1, 0, 1, 2, ..., A-Z, FALSE, TRUE.

    ' If match_type is 0, Match finds the first value that is exactly equal to lookup_value. Lookup_array can be in any order. Note that Match is case-insensitive.

    ' If match_type is -1, Match finds the smallest value that is greater than or equal to lookup_value. Lookup_array must be placed in descending order: TRUE, FALSE, Z-A, ...2, 1, 0, -1, -2, ..., and so on.
    Dim match_gun As Integer
    match_gun = WorksheetFunction.Match(415, sheet1.Range("I2:I11"), 0)
    sheet2.Range("C1").Value = "Armada with 415 gunpowder"
    sheet2.Range("C2").Value = sheet1.Range("A" & match_gun + 1).Value
    
    ' AutoFit the Columns
    Worksheets("BreakDown").Range("A1:C1").Columns.AutoFit
    
End Sub
