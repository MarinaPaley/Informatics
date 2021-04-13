function valid_double_parse(str)
    answer = tryparse(Float64, str);
    if (answer != nothing) && (answer <= 0)
        answer = nothing;
    end;
    return answer;
end;
