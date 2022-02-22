defmodule CustomGuard do
  defguard is_name(message) when is_binary(message) and byte_size(message) > 5
  defguard is_even(number) when is_integer(number) and rem(number, 2) == 0
end
