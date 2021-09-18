Attribute VB_Name = "Module2"
Sub population():

    Dim total_2000, total_2030 As Long, i As Integer, per_change As Single, pop1, pop2, max2030, max2000, min2000, min2030 As Long
    Dim max2000Index, max2030Index, min2000Index, min2030Index As Integer
    Dim sheet1, sheet2, sheet3 As Worksheet
    
    Set sheet1 = Worksheets("Census_2000")
    Set sheet2 = Worksheets("Projected_2030")
    Set sheet3 = Worksheets("Summary")
    
    total_2000 = 0
    total_2030 = 0
    
    For i = 2 To 52:
    
        ' populate states
        sheet3.Range("A" & i).Value = sheet1.Range("A" & i).Value
        
        ' populate the 2000 population column
        sheet3.Range("B" & i).Value = sheet1.Range("B" & i).Value
        
        ' populate the 2030 population column
        sheet3.Range("C" & i).Value = sheet2.Range("B" & i).Value
        
        ' add on to the 2000 total
        total_2000 = total_2000 + sheet1.Range("B" & i).Value
        
        ' add on to the 2030 total
        total_2030 = total_2030 + sheet2.Range("B" & i).Value
        
        ' try formatting the styles of the population columns
        sheet3.Range("B" & i).Style = "Comma [0]"
        sheet3.Range("C" & i).Style = "Comma [0]"
        
        pop1 = sheet3.Range("B" & i).Value
        pop2 = sheet3.Range("C" & i).Value
        
        ' calculate the percent change
        per_change = ((pop2 - pop1) / pop1)
        
        sheet3.Range("D" & i).Value = per_change
        ' apply the percent style to the cells in the D column
        sheet3.Range("D" & i).Style = "Percent"
        
        If per_change > 0 Then
            ' if the population grows, color the cell blue
            sheet3.Cells(i, 4).Interior.ColorIndex = 33
        Else
            ' if the population decreases, color the cell yellow
            sheet3.Cells(i, 4).Interior.ColorIndex = 36
        End If
        
        ' Autofit columns A - E
        Worksheets("Summary").Range("A:E").Columns.AutoFit
    
    Next i
    
    ' Total Population 2000
    sheet3.Range("I6").Value = total_2000
    
    ' Total Population 2030
    sheet3.Range("I12").Value = total_2030
    
    
    ' find the max population for 2000
    max2000 = WorksheetFunction.Max(sheet3.Range("B2:B52"))
    max2000Index = WorksheetFunction.Match(max2000, sheet3.Range("B2:B52"), 0)
    Range("H4").Value = sheet3.Range("A" & max2000Index + 1).Value
    Range("I4").Value = max2000
    
    ' find the min population for 2000
    min2000 = WorksheetFunction.Min(sheet3.Range("B2:B52"))
    min2000Index = WorksheetFunction.Match(min2000, sheet3.Range("B2:B52"), 0)
    Range("H5").Value = sheet3.Range("A" & min2000Index + 1).Value
    Range("I5").Value = min2000
    
    ' find the max population for 2030
    max2030 = WorksheetFunction.Max(sheet3.Range("C2:C52"))
    max2030Index = WorksheetFunction.Match(max2030, sheet3.Range("C2:C52"), 0)
    Range("H10").Value = sheet3.Range("A" & max2030Index + 1).Value
    Range("I10").Value = max2030
    
    ' find the min population for 2030
    min2030 = WorksheetFunction.Min(sheet3.Range("C2:C52"))
    min2030Index = WorksheetFunction.Match(min2030, sheet3.Range("C2:C52"), 0)
    Range("H11").Value = sheet3.Range("A" & min2030Index + 1).Value
    Range("I11").Value = min2030
    
    sheet3.Range("H4").Style = "Comma [0]"
    sheet3.Range("I4").Style = "Comma [0]"
    sheet3.Range("H5").Style = "Comma [0]"
    sheet3.Range("I5").Style = "Comma [0]"
    sheet3.Range("H10").Style = "Comma [0]"
    sheet3.Range("I10").Style = "Comma [0]"
    sheet3.Range("H11").Style = "Comma [0]"
    sheet3.Range("I11").Style = "Comma [0]"
    
    Worksheets("Summary").Columns("H").AutoFit

End Sub
