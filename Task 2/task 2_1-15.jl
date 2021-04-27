include("add.jl");
include("sub.jl");
include("avg.jl");
include("input_int.jl");
include("input_float.jl");
include("is_value_correct.jl")

# input data
choice = input_int("Введите число, соответствующее выбору:"*
                      " 1 - сумма, 2 - разность, 3 - среднее арифметическое");
x = input_float("Введите первое число");
y = input_float("Введите второе число");
# checking for correction data
if is_value_correct(choice) && is_value_correct(x) && is_value_correct(y)
# case choice for function
    if choice == 1
        additional = add(x,y);
        println(" x = $x, y = $y, сумма = $additional");
    elseif choice == 2
        substaction = sub(x, y);
        println(" x = $x, y = $y, разность = $substaction");
    elseif choice == 3
        average = avg(x, y);
        println(" x = $x, y = $y, среднее арифметическое = $average");
    else
        println("Нет функции для введенного выбора");
    end;
else
    println("Неправильные данные. Введено не число");
end;
