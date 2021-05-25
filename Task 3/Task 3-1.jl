include("read_input.jl");
include("can_calculate.jl");
include("f.jl");

println("Задача 3-1. Вариант 16");

try
    local left_bound  = parse(Float64, read_input("Введите левую границу расчета"));
    local right_bound = parse(Float64, read_input("Введите правую границу расчета"));
    local step = parse(Float64, read_input("Введите шаг расчета"));
    local a = parse(Float64, read_input("Введите константу"));

    if step <= floatmin() # меньше или равен 0
        throw("Шаг меньше или равен 0. Ошибка!");
    end;

    local x = left_bound;
    println("|   x     |      y              |");
    println("|____  ___|_____________________|");
    while x <= right_bound
        if can_calculate(a, x, floatmin())
            y = f(a, x);
            println("| $(round(x, digits = 2))    | $(round(y, digits = 20))|");
        else
            println("| $(round(x, digits = 2))    |нет решения              |");
        end;
        x = x + step;
    end;
catch e
    println("-----------------------------------------------------------");
    println("В процессе исполения программы произошла нештатная ситуация");
    if isa(e, ArgumentError)
        println(" $(e.msg)")
    else
        println(" Неизвестная ошибка")
        rethrow(e)
    end;
    println("-----------------------------------------------------------");
end
