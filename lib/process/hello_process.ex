defmodule Process.HelloProcess do
  @moduledoc """
  プロセスの入門
  """

  def add(a, b) when is_number(a) and is_number(b) do
    IO.puts(a + b)
    a + b
  end
end
