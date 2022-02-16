defmodule Example do
  use Hello, greeting: "Oi", async: false
  import Hello, only: [any_func: 0]

  def wrapper_anyfunc do
    any_func()
  end
end
