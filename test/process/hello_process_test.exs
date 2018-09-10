defmodule Process.HelloProcessTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "add(1,2)" do
    assert 3 === Process.HelloProcess.add(1, 2)
  end
end
