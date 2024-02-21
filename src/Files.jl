
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

TODO: Add documentation
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