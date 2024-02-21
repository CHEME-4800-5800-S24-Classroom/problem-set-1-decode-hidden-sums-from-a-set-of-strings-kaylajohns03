"""
    MyPuzzleRecordModel

TODO: Add documentation
"""
# TODO: Finish the MyPuzzleRecordModel type
mutable struct MyPuzzleRecordModel

    # data -
    record::String
    characters::Array{Char,1}
    len::Int64

    # constructor
    MyPuzzleRecordModel() = new();
end