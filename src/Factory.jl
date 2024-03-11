
# ===== PUBLIC METHODS BELOW HERE =================================================================================== #
"""
function build(record::String)::MyPuzzleRecordModel

Builds a MyPuzzleRecordModel from an encoded line of text with fields character, len (length), and record populated

Arguments: 
- record::String: encoded line of text from a file

Returns: a MyPuzzleRecordModel instance with all fields populated from the given line of text
"""

function build(record::String)::MyPuzzleRecordModel

    #initalize 
    model = MyPuzzleRecordModel();

    # add data to model
    model.characters = collect(record);
    model.len = length(record);
    model.record = record;
    return model;
end
# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #