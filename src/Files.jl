
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

Takes a file path and loads each line of the file into a dictonary 

Arguments: 
- filename::String: The name of the file to be loaded in 

Returns: A Dictonary with the keys as the line numbers in the fine (starting at 1) and the values as a 
MyPuzzleRecordModel instance that holds the encoded line of text corresponding to that line number
"""
function puzzleparse(filename::String)::Dict{Int64, MyPuzzleRecordModel}
    
    # initialize -
    records = Dict{Int64, MyPuzzleRecordModel}()
    linecounter = 1;
    
    # main -
    open(filename, "r") do io
        for line ∈ eachline(io)
            model = build(line)

            records[linecounter] = model;

            linecounter += 1

        end
    end

    # return the header and the records -
    return records;
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #