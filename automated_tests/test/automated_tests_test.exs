defmodule AutomatedTestsTest do
  use ExUnit.Case
  doctest AutomatedTests

  test "greets the world" do
    assert AutomatedTests.hello() == :world
  end
end
