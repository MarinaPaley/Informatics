#run(`clear`);
x = 0.29;
y = 3.7;
z = -1.0;
a = 3 * x^y  * log(y) + exp(z * x);
b = abs(2 * y * z) / (sin(x) * sin(x)) - x^2 / 3;
println("x = ", x, " y = ", y, " z = ", z);
println("a = ", a, " b = ", b);
