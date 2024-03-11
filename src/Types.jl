"""
    MyPuzzleRecordModel

Creates a MyPuzzleRecordModel type to represent a lien of text with three fields: 
- record::String: hold the line of encoded text 
- characters::Array{Char,1}: holds the characters in the line of text 
- len::Int64: hold the number of characters in the line of text 
"""

mutable struct MyPuzzleRecordModel

    # data -
    record::String
    characters::Array{Char,1}
    len::Int64

    # constructor
    MyPuzzleRecordModel() = new();
end