function read_input(message)
    if (message != nothing)
        println(message);
    end;
    result = readline();
    return result;
end;
