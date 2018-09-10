defmodule SandboxElixirTest do
  use ExUnit.Case
  doctest SandboxElixir

  test "greets the world" do
    assert SandboxElixir.hello() == :world
  end

  test "control case" do
    assert "test message" == SandboxElixir.control_case({:success, "test message"})
  end

  test "control case failure" do
    assert :failure == SandboxElixir.control_case({:failure, "test message"})
  end
end
