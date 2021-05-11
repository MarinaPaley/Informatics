include("add.jl");
include("sub.jl");
include("avg.jl");
include("input_int.jl");
include("is_value_correct.jl")

# Define enum type
@enum ArithmeticOperation add_op = 1 sub_op = 2 avg_op = 3

# input data
choice = input_int("Введите число, соответствующее выбору:"*
                   " $(Int(add_op::ArithmeticOperation)) - сумма"*
                   " $(Int(sub_op::ArithmeticOperation))  - разность"*
                   " $(Int(avg_op::ArithmeticOperation))  - среднее арифметическое");

try
    action = ArithmeticOperation(choice);

    local x = input_int("Введите первое число");
    local y = input_int("Введите второе число");
    # checking for correction data
    if !is_value_correct(x) || !is_value_correct(y)
        throw(ArgumentError("Ошибка при вводе чисел"));
    end;
    # case choice for function
    if action == add_op::ArithmeticOperation
        result = add(x, y);
        println(" x = $x, y = $y, сумма = $result");

    elseif action == sub_op::ArithmeticOperation
        result = sub(x, y);
        println(" x = $x, y = $y, разность = $result");

    else action == avg_op::ArithmeticOperation
        result = avg(x, y);
        println(" x = $x, y = $y, среднее арифметическое = $result");
    end;

catch e
    if isa(e, ArgumentError)
       println(e.msg)
   end;
end;
