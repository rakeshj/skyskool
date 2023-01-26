defmodule SkySkoolTest do
  use ExUnit.Case
  doctest SkySkool

  test "greets the world" do
    assert SkySkool.hello() == :world
  end
end
