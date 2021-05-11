include("read_input.jl");

println("Задача 3-1. Вариант 16");

try
    left_bound  = read_input("Введите левую границу расчета");
    right_bound = read_input("Введите правую границу расчета");
    step = read_input("Введите шаг расчета");
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
