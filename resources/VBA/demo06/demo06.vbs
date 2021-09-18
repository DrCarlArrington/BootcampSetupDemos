Attribute VB_Name = "Module1"
Sub WellsFargo2()

    ' Add a sheet named Combined Data
    Sheets.Add.Name = "Combined_Data"
    ' move the new sheet so that it is the first in the Excel workbook
    Sheets("Combined_Data").Move Before:=Sheets(1)
    ' set the reference of the combined sheet
    Set combined_sheet = Worksheets("Combined_Data")
    
    ' declare a variable to hold the last row of the combined sheet
    Dim lastRow As Long
    
    ' delcare a variable to hold the last row of each state's worksheet
    Dim lastRowState As Long
    
    ' to loop through all of the worksheets in an Excel Workbook
    For Each ws In Worksheets
    
        ' Find the last row of the combined sheet after each paste
        ' Add 1 to get first empty row
        lastRow = combined_sheet.Cells(Rows.Count, "A").End(xlUp).Row + 1
        
        ' Find the last row of each state worksheet
        ' Subtract one to return the number of rows without header
        lastRowState = ws.Cells(Rows.Count, "A").End(xlUp).Row - 1
        
         ' Copy the contents of each state sheet into the combined sheet
        combined_sheet.Range("A" & lastRow & ":G" & ((lastRowState - 1) + lastRow)).Value = ws.Range("A2:G" & (lastRowState + 1)).Value
        
    Next ws
    
    ' Copy the headers from Alabama sheet
    combined_sheet.Range("A1:G1").Value = Sheets(2).Range("A1:G1").Value
    
    ' Autofit to display data
    combined_sheet.Columns("A:G").AutoFit

End Sub
