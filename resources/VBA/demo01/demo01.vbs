Attribute VB_Name = "Module1"
Sub dimensions():

    ' set up variables of type Worksheet
    Dim sheet1, Sheet2 As Worksheet
    
    ' set the sheet1 reference to the Sheet1 worksheet
    Set sheet1 = Worksheets("Sheet1")
     ' set the sheet2 reference to the Sheet2 worksheet
    Set Sheet2 = Worksheets("Sheet2")
    
    ' declare a string
    Dim string1 As String
    
    ' set string1 value
    string1 = "Place me anywhere in the sheet!"
    
    'use the Worksheet references to populate the cell using the string above
    sheet1.Range("A1").Value = string1
    Sheet2.Range("A1").Value = string1
End Sub
