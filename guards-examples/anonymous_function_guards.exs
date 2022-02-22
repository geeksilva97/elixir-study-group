fn_with_multiple_clauses = fn 
  n when is_integer(n) -> {"A number was given", n}
  n when is_map(n) -> {"A map was given", n}
  n -> {"I don't know what is this", n}
end

IO.inspect fn_with_multiple_clauses.(100)
IO.inspect fn_with_multiple_clauses.(%{"name" => "Yagami Light"})
IO.inspect fn_with_multiple_clauses.([])
