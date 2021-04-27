include("get_perimeter.jl")

function get_triangle_area(a, b, c)
    p = get_perimeter(a, b, c) / 2;
    return sqrt(p * (p - a) * (p - b) * (p - c));
end
