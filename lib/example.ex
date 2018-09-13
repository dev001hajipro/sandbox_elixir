defmodule Example do
  @moduledoc """
  プロセスの入門
  """

  @doc """
  加算

  ## パラメータ
    - a : int number
    - b : int number

  ## 例
    iex> Example.add(1,2)
    3

  """
  def add(a, b) when is_number(a) and is_number(b) do
    IO.puts(a + b)
    a + b
  end
end
