defmodule Math do
  def generate_multiplication_table(base, num_tables) do
   multiplication_table(base, num_tables, [], num_tables) 
  end

  defp multiplication_table(0, _, acc, _) do
    IO.puts "Finished"
    IO.inspect acc
    acc
  end
  defp multiplication_table(base, 0, acc, original_num_tables), do: multiplication_table(base - 1, original_num_tables, acc, original_num_tables) 
  defp multiplication_table(base, num_tables, acc, original_num_tables) when num_tables > 0 do
    multiplication_table(base, num_tables - 1, ["#{base} x #{num_tables} = #{base * num_tables}" | acc], original_num_tables) 
  end 
end
