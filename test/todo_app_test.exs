defmodule TodoAppTest do
  use ExUnit.Case
  doctest TodoApp

  test "return atom :hello" do
    assert TodoApp.hello() == :hello
  end

  test "reset_data" do
    assert TodoApp.reset_data() == []
  end

  test "make_test_data" do
    assert length(TodoApp.make_test_data()) == 2
  end
end
