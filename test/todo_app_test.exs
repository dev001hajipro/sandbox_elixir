defmodule TodoAppTest do
  use ExUnit.Case
  doctest TodoApp

  test "return atom :hello" do
    assert TodoApp.hello() == :hello
  end

  test "reset_data" do
    assert TodoApp.reset_data() == []
  end
end
