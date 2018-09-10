defmodule GreetingTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Greeting

  test "hello" do
    assert "Hi Smith!" === Greeting.hello("Smith")
  end

  test "isnum wight guard" do
    assert "integer" === Greeting.isnum(100)
    #assert "inte" === Greeting.isnum("aaa")
  end

  test "increment" do
    assert 3 === Greeting.increment(2, 1)
    assert 0 === Greeting.increment(0, 0)
  end

  test "pipe" do
    assert [1, 4, 9] === Greeting.pipe([1, 2, 3])
  end

  test "check_list" do
    assert [1, 2, 3] === Greeting.check_list([1, 2, 3])
    assert "hello" === Greeting.check_list("hello")
  end

  # CaptureIOで出力をキャッチ
  test "output hello" do
    assert capture_io(fn -> IO.puts "hello" end) == "hello\n"
  end


end
