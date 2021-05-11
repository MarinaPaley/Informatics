function input_int(message = "")
    println(message);
    str = readline();
    return tryparse(Int128, str);
end
