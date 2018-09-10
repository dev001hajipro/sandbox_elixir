defmodule Greeting do
  @moduledoc """
  サンドボックスモジュール
  """

  @greeting "こんにちは"

  @doc """
  挨拶
  """
  def hello(name) do
    case name do
      "hi" -> "#{@greeting}"
      _ -> "Hi #{name}!"
    end
  end

  @doc """
  数値チェック
  """
  def isnum(n \\ 0) when is_number(n) do
    "integer"
  end

  @doc """
  ++
  """
  def increment(a, b \\ 1), do: a + b

  @doc """
  パイプ演算子を使う
  """
  def pipe(ls) do
    ls
    |> Enum.map(fn x -> x * x end)
  end

  def check_list(ls) when is_list(ls), do: ls
  def check_list(ls) when is_binary(ls), do: ls
end
