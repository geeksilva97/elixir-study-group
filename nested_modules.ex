defmodule Outer do
  defmodule Inner do
    def inner_func, do: "INNER FUNCTION"
  end
  
  def outer_func, do: "OUTER FUNCTION"
end
