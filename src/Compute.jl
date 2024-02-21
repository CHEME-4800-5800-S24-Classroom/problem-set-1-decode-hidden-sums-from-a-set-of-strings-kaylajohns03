# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.

# returns combination of first and last number the record 
function _decode_part_1(model::MyPuzzleRecordModel)::Int64
    #import character array for the model 
    character = model.characters
    digits = filter(isdigit, character);
    value = Array{Char,1}();

    push!(value, digits[1]);
    push!(value, digits[end]);

    #take value and make it an integer 
    x = value |> join
    integer = parse(Int64, x)
    return integer

end



# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
"""
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
   

    for(line, record) ∈ models

        #call decode 
        codes[line] = _decode_part_1(record);

        #upodate total value 
        total += codes[line];

    end
        
    # return the total -
    return (total, codes);
end

"""
    decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();

    for(line, record) ∈ models

        #call decode 
        codes[line] = _decode_part_1(record);

        #update total value 
        total += codes[line];

    end

     # return the total -
     return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #