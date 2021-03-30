include("valid_double_parse.jl")

println("Task 1-2");
print("Input the value of the first catet = ");
str = readline();
a = valid_double_parse(str);
print("Input the value of the second catet = ");
str = readline();
b = valid_double_parse(str);

if (a != nothing) && (b != nothing)
    c = sqrt(a * a + b * b);
    perimetr = a + b + c;
    square = 1 / 2 * a * b;
    println("The perimetr of the triangle is = ", perimetr);
    println("The square of the triangle is = ", square);
else
    println("Error in input data");
end;
