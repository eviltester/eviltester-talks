Attribute VB_Name = "Module1"
Option Explicit

Function makeDotFormat() As String


    Dim lastRow As Long                     ' the last row in the sheet being processed
    Dim lastCol As Long                        ' the last column in the sheet being processed
    Dim theSheet As Worksheet           ' the sheet being processed
    Dim outputString As String              ' the string to return
    Dim theRangeOfRows As Range   ' a range of rows to process
    Dim aRowToProcess As Range      ' a range that represents a single row

    ' details extracted from cells
    Dim nodeName As String
    Dim nodeID As String
    Dim fromNodeID As String
    Dim toNodeID As String
    Dim linkName As String

    'get most of the info from the links sheet

    On Error Resume Next    'just bludgeon our way to the end

    ' start up the dot representation by adding the graph name and the rankdir
    ' these are defined in the macros worksheet
    outputString = "digraph " & Worksheets("macros").Range("B1") & "{" & vbCrLf
    outputString = outputString & "rankdir = " & Worksheets("macros").Range("B2") & ";" & vbCrLf

    'do all the  nodes
    Set theSheet = Worksheets("nodes")

    ' identify the used columns and rows
    lastRow = theSheet.Range("a1").SpecialCells(xlCellTypeLastCell).Row
    lastCol = theSheet.Range("a1").SpecialCells(xlCellTypeLastCell).Column

    ' loop through the identified rows and get the node details
    Set theRangeOfRows = theSheet.Range(theSheet.Cells(2, 1), theSheet.Cells(lastRow, lastCol))
    For Each aRowToProcess In theRangeOfRows.Rows
        If aRowToProcess.EntireRow.Hidden = False Then
            'node name is in column B
            nodeName = aRowToProcess.Cells(2)

            'node ID is in column A
            nodeID = aRowToProcess.Cells(1)

            'add it to the output string
            outputString = outputString & nodeID & "[label = " & """" & nodeName & """" & "];" & vbCrLf

        End If
    Next


    Set theSheet = Worksheets("links")
    'find the range to process
    lastRow = theSheet.Range("a1").SpecialCells(xlCellTypeLastCell).Row
    lastCol = theSheet.Range("a1").SpecialCells(xlCellTypeLastCell).Column

    Set theRangeOfRows = theSheet.Range(theSheet.Cells(2, 1), theSheet.Cells(lastRow, lastCol))
    For Each aRowToProcess In theRangeOfRows.Rows
        If aRowToProcess.EntireRow.Hidden = False Then

            'from node id  is in B
            fromNodeID = aRowToProcess.Cells(2)
            'to node id is in C
            toNodeID = aRowToProcess.Cells(3)
            'link name is in D
            linkName = aRowToProcess.Cells(4)

            outputString = outputString & fromNodeID & " -> " & toNodeID & "[ label = " & """" & linkName & """" & "];" & vbCrLf
        End If
    Next

    outputString = outputString & "}"

    makeDotFormat = outputString

    ' simple really !
End Function
