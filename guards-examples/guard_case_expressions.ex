defmodule GuardCaseExpressions do
  def case_example(n \\ nil) do
    case n do
      1 -> :one
      2 -> :two
      "ola mundo" -> :saying_hello
      n when is_integer(n) and n > 10 -> :greater_than_10
      n when is_nil(n) -> :pathetic
      _ -> :anything_else
    end
  end
  def receive_example(a,b) do
    parent = self()
    spawn(fn ->
      IO.inspect self()
      IO.inspect parent
      send(parent, a + b)
    end)

    receive do
      n when n > 3 -> {"The result is greather than 3", n}
      n when n < 0 -> {"Negative result", n}
      n -> {"The result is anything else", n}
    end
  end
end
