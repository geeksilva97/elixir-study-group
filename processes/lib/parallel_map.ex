defmodule ParallelMap do
  def pmap(collection, fun) do
    me = self()
    collection
    |> Enum.map(fn (elem) ->
      # spawn a process to perform the transformation fun.(elem)
      spawn_link fn -> (send me, {self(), fun.(elem)}) end
    end)
    |> Enum.map(fn (pid) ->
      # pass through all the created process and awaitas for the response
      receive do {^pid, result} -> result end
    end)
  end 
end
