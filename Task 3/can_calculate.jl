function can_calculate(a, x, epsilon)::Bool
    return (a + 2 * x + x * x) > epsilon;
end
