defmodule MyLengthTest do
  use ExUnit.Case
  doctest MyLength

  test "zero" do
    assert 0 === MyLength.of([])
  end

  test "length is three." do
    assert 3 === MyLength.of([1, 2, 3])
  end
end
