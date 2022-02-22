defmodule GuardsAndExceptions do
 def run(message \\ "hello") do
   case message do
    # If we try to evaluate lengh("hello") it will raise an ArgumentError
    something when length(something) > 0 -> :length_worked
    _anyting_else -> :length_failed
   end
 end 

  defmodule Check do
    # if the first guard fails the second will not be evaluated
    def empty?(val) when map_size(val) == 0 or tuple_size(val) == 0, do: true
    def empty?(_val), do: false

    def improved_empty?(val)
      # Evaluates the two guards. The failing of one guard doesn't impact the evaluation of the other.
      when map_size(val) == 0
      when tuple_size(val) == 0,
      do: true
    def improved_empty?(_val), do: false 
  end
end

