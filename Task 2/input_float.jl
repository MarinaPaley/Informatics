function input_float(message = "")
    println(message);
    str = readline();
    return tryparse(Float64, str);
end
