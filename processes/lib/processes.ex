defmodule Processes do
  @moduledoc """
  Documentation for `Processes`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Processes.hello()
      :world

  """
  def hello do
    :world
  end

  def spawn_anonymous_fun do
    spawn(fn () -> IO.puts "A process from a anonymous function" end)
  end

  def spawn_a_module_function do
    spawn(Greetings, :hello, [])
    spawn(Greetings, :hello, ["Steven Strange"])
  end
end
