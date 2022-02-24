defmodule Guesser do
  def guess(actual, actual.._), do: actual
  def guess(actual, _..actual), do: actual
  def guess(actual, smaller..greater) do
    halfway = div(greater + smaller, 2)
    IO.puts "Is it #{halfway}?"
    case halfway do
      ^actual -> "Found it! #{actual}" 
      n when n > actual -> guess(actual, smaller..(n-1))
      n -> guess(actual, (n+1)..greater)
    end
  end 


  # Below is the same implementation without case
  def guess2(actual, low..high = range) do
    halfway = div(low + high, 2)
    IO.puts "Its it #{halfway}?"
    guess_helper(actual, halfway, range)
  end   

  defp guess_helper(actual, actual, _), do: IO.puts actual
  defp guess_helper(actual, halfway, low.._) when halfway > actual, do: guess2(actual, low..(halfway-1))
  defp guess_helper(actual, halfway, _..high), do: guess2(actual, (halfway+1)..high)
end
