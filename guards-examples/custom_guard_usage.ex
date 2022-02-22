defmodule CustomGuardUsage do
  import CustomGuard, only: [is_even: 1, is_name: 1]

  def handle_name(name) when is_name(name) do
    "Hello #{name}"
  end
  def handle_name(name), do: {"Is this a real name?", name}
end
