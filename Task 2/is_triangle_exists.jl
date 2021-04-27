function is_triangle_exists(a, b, c)::Bool
    sides_exist = a != nothing && b != nothing && c!= nothing;
    return sides_exist && (a + b) > c && (b + c) > a && (a + c) > b;
end
