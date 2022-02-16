defmodule FunctionsPatternMatching do
  def sum_list(list), do: sum_from_list(list, 0)
  defp sum_from_list([], acc) do
    acc
  end
  defp sum_from_list(list, acc) do
    [head | tail] = list
    sum_from_list(tail, acc + head)
  end
end
