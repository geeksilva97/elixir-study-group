defmodule GuardFunctionClauses do
  def is_greater_than2?(n) when is_integer(n), do: n > 2
  def is_greater_than2?(n), do: {"I don't know how to check it", n}
end
