defmodule RecursionSample do
  @moduledoc """
  Elixirでは末尾再帰最適化が行われる時はcall_lastなどがバイトコードで呼ばれます。それを確認するためのいくつかの関数。

  """
  def sum([]), do: 0

  def sum([h | t]) do
    h + sum(t)
  end

  def print_n(0), do: IO.puts(0)

  def print_n(n) do
    IO.puts(n)
    print_n(n - 1)
  end

  @doc """
  末尾再帰されていない関数なのでcallが呼ばれます。
  """
  def factorial(1), do: 1

  def factorial(n) do
    n * factorial(n - 1)
  end
end
