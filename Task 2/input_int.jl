function input_int(message = "")
    println(message);
    str = readline();
    return tryparse(UInt8, str);
end
