include("read_double.jl");
include("read_int.jl")
include("get_triangle_area.jl");
include("get_rectangle_area.jl");
include("is_triangle_exists.jl");
include("is_rectangle_exists.jl");

println("Task 2-1. Variant 16");
# Define enum type
@enum Shape rectangle = 0  triangle = 1

    user_input = read_int("Choose figure for area calculation: rectangle = 0, triangle = 1");
    try
        figure = Shape(user_input);
    catch
        println("You entered wrong value");
        quit()
    end;
        #Get rectabgle area
    if (figure == rectangle::Shape)
        length = read_double("Input length value = ");
        width = read_double("Input width value = ");

        if (is_rectangle_exists(length, width))
            area = get_rectangle_area(length, width);
            println("Rectangle area is $area");
        else
            println("Error in input data");
        end;

        #Get triangle area
    elseif (figure == triangle::Shape)
        a = read_double("Input first side = ");
        b = read_double("Input second side = ");
        c = read_double("Input third side = ");

        if is_triangle_exists(a, b, c)
            area = get_triangle_area(a, b, c);
            println("Triangle area is $area");
        else
            println("Error in input data");
        end;
    else
        println("Error in input data");
    end;
