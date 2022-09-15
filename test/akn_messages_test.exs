defmodule AknMessagesTest do
  use ExUnit.Case
  doctest AknMessages

  test "greets the world" do
    assert AknMessages.hello() == :world
  end
end
