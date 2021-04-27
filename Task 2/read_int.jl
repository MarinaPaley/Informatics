function read_int(message = nothing)
    if (message != nothing)
        println(message);
    end;

    user_input = readline();
    return tryparse(UInt8, user_input);
end;
