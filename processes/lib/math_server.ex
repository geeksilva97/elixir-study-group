defmodule MathServer do
  def start, do: spawn(__MODULE__, :loop, [])
  def mult_table(server_pid, {base, num_tables}) do
    send(server_pid, {self(), {:mult_table, {base, num_tables}}}) 
  end
  def loop do
    receive do
      {sender_pid, {:mult_table, {base, num_tables}}} ->
        IO.puts "#{inspect sender_pid} requested the calculation to the server process #{inspect self()}\n"
        pid = spawn(Math, :generate_multiplication_table, [base, num_tables])
        IO.puts "The server process #{inspect self()} started the worker #{inspect pid} to make it\n"
        loop()
      {sender_pid, :shutdown} -> IO.puts "Shutting down..."
      any ->
        IO.puts "I've received anything else"
        IO.inspect any
        loop()
    end
  end 
end
