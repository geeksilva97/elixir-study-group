to_process = List.duplicate(37, 20)

(1..10)
|> Enum.each(fn (num_processes) ->
  {time, result} = :timer.tc(
    FibScheduler, :run,
    [num_processes, Fib, :fib, to_process]
  )

  if num_processes == 1 do
    IO.puts inspect result
    IO.puts "\n # time(s)"
  end

  :io.format("~2B   ~.2f~n", [num_processes, time/1000000.0])
end)
