Attribute VB_Name = "Module1"
Sub WellsFargo1()
    
    ' to loop through all of the worksheets in an Excel Workbook
    For Each ws In Worksheets
    
        ' get the last row
        Dim lastRow As Integer
        lastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
    
         ' variable to hold the worksheet name
        Dim WorksheetName As String
        WorksheetName = ws.Name ' stores the name of the worksheet
        'MsgBox (WorksheetName)
        
         ' Split the worksheet name using _ as the delimiter
        Dim state() As String
        state = Split(WorksheetName, "_") ' statename will be the first index (0) after the split
        ' MsgBox (state(0))
        
         ' add the state to be the first column
        ws.Range("A1").EntireColumn.Insert
        ' Add the word state into cell "A1"
        ws.Range("A1").Value = "State"
        
        ' Add the state name to all of the rows
        ws.Range("A2:A" & lastRow).Value = state(0)
        
        ' Find the last column
        Dim lastCol As Integer
        lastCol = ws.Cells(1, Columns.Count).End(xlToLeft).Column
        
        ' Rename the year columns by looping through the first row
        For Col = 3 To lastCol
        
            ' Variable to hold the worksheet column name
            Dim colName As String
            colName = ws.Cells(1, Col).Value
            
            ' Declare an array to hold the split column name
            Dim colSplit() As String
            colSplit = Split(colName, " ") ' index 3 is the year
            
            ' keep the item from index 3, and use it as the column header
            ws.Cells(1, Col).Value = colSplit(3)
        
        Next Col
        
        ' use another loop to format the cells to currency
        For Row = 2 To lastRow
        
            For Col = 3 To lastCol
            
                ' call the currency style on the data cells
                ws.Cells(Row, Col).Style = "Currency"
            
            Next Col
        
        Next Row
    
    Next ws
    

End Sub
