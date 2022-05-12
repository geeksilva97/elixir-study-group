defmodule LinksAndMonitors do
  def sad_function do
    :timer.sleep(500)
    exit(:boom)
  end

  def normal_function do
    :timer.sleep(500)
    IO.puts "ending normally"
  end

  def monitor_demo do
    res = spawn_monitor(__MODULE__, :sad_function, []) 
    IO.puts inspect res

    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
    end


    res = spawn_monitor(__MODULE__, :normal_function, []) 
    IO.puts inspect res

    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
    end
  end

  def links_demo do
    # spawn(__MODULE__, :sad_function, []) 
    Process.flag(:trap_exit, true) # now this process can get messages about other processes ending (included normal ending)
    spawn_link(__MODULE__, :sad_function, []) 
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
    end


    spawn_link(__MODULE__, :normal_function, []) 
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
    end
  end
end
