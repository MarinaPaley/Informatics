println("Task 1-2 Variant 14");

print("Input the boat's velocity = ");
str = readline();
velocity_boat = tryparse(Float64, str);
print("Input the river's velocity = ");
str = readline();
velocity_river = tryparse(Float64, str);
print("Input time = ");
str = readline();
time_travel = tryparse(Float64, str);

if (velocity_boat != nothing) &&
   (velocity_river!= nothing) &&
   (time_travel != nothing) &&
   (velocity_boat > 0) &&
   (velocity_river >= 0) &&
   (time_travel > 0)
    space = (velocity_boat + velocity_river) * time_travel;
    println("Space is = ", space);
else
    println("Error in input data");
end;
