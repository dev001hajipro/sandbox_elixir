defmodule MyLength do
  @moduledoc """
  リストのサイズを求める

  elixirscheelより実装
  https://elixirschool.com/ja/lessons/basics/functions/
  """

  def of([]), do: 0

  def of([_ | tail]), do: 1 + of(tail)
end
