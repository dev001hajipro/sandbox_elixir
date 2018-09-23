defmodule Process.HelloProcess do
  @moduledoc """
  プロセスの入門
  """

  def add(a, b) when is_number(a) and is_number(b) do
    a + b
  end
end
