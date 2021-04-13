include("valid_double_parse.jl");

println("Task 2-1");
println("Choose figure for area calculation: reactangle = 0, triangle = 1");
str = readline();
figure = tryparse(Int8, str);

    #Get rectabgle area
if (figure == 0)
    println("Input length value = ");
    str = readline();
    length = valid_double_parse(str);
    println("Input width value = ");
    str = readline();
    width = valid_double_parse(str);

    if (length != nothing && width != nothing)
        area = length * width;
        println("Rectangle area is $area");
    else
        println("Error in input data");
    end;

    #Get triangle area
elseif (figure == 1)
    println("Input first side = ");
    str = readline();
    a = valid_double_parse(str);
    println("Input second side = ");
    str = readline();
    b = valid_double_parse(str);
    println("Input third side = ");
    str = readline();
    c = valid_double_parse(str);

    if (a != nothing && b != nothing && c!= nothing)
        p = (a + b + c)/ 2;
        area = sqrt(p * (p - a) * (p - b) * (p - c));
        println("Triangle area is $area");
    else
        println("Error in input data");
    end;
else
    println("Error in input data");
end;
