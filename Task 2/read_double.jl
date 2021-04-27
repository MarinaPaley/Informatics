include("valid_double_parse.jl");

function read_double(message = nothing)
    if (message != nothing)
        println(message);
    end;

    user_input = readline();
    return valid_double_parse(user_input);
end;
