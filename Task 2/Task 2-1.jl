include("read_double.jl");
include("read_int.jl")
include("get_triangle_area.jl");
include("get_rectangle_area.jl");
include("is_triangle_exists.jl");
include("is_rectangle_exists.jl");

println("Task 2-1. Variant 16");

# Define enum type
@enum Shape rectangle = 1  triangle = 2

    user_input = read_int("Выберете фигуру:"
        * " прямоугольник = $(Int(rectangle::Shape)),"
        * " треугольник = $(Int(triangle::Shape))");
    try
        figure = Shape(user_input);

        #Get rectabgle area
        if (figure == rectangle::Shape)
            length = read_double("Введите значение длины = ");
            width  = read_double("Введите значение ширины = ");

            if (is_rectangle_exists(length, width))
                area = get_rectangle_area(length, width);
                println("Площадь прямоугольника =  $area");
            else
                throw(
                    ArgumentError("Ошибка при вводе данных."
                        * " Прямоугольник с такими длинами сторон не существует."));
            end;

        #Get triangle area
        else (figure == triangle::Shape)
            a = read_double("Введите первую сторону = ");
            b = read_double("Введите вторую сторону = ");
            c = read_double("Введите третью сторону = ");

            if is_triangle_exists(a, b, c)
                area = get_triangle_area(a, b, c);
                println("Площадь треуглника =  $area");
            else
                throw(
                    ArgumentError("Ошибка при вводе данных"
                        * " Прямоугольник с такими длинами сторон не существует."));
            end;
        end;
    catch e
        println("В процессе исполнения программы произошла внештатная ситуация:");
        if isa(e, ArgumentError)
            println(e.msg)
        end;
    end;
