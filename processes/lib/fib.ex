defmodule Fib do
  def fib(scheduler) do
    send(scheduler, {:ready, self()})

    receive do
      {:fib, n, client} ->
        message = { :answer, n, fib_calc(n), self() }
        send(client, message)
        fib(scheduler)
      { :shutdown } ->
        exit(:normal)
    end

    defp fib_calc(0), do: 0
    defp fib_calc(1), do: 1
    defp fib_calc(n), do: fib_calc(n-1) + fib_calc(n-2)
  end
end
