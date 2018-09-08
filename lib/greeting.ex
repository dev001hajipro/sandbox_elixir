defmodule Greeting do
  @moduledoc """
  サンドボックスモジュール
  """

  @doc """
  挨拶
  """
  def sayhello(name) do
    IO.puts("Hi #{name}!")
  end

  @doc """
  数値チェック
  """
  def isnum(n) when is_number(n) do
    "integer"
  end

  @doc """
  show hello world
  """
  def show_helloworld() do
    IO.puts("hello world!!")
  end

  @doc """
  ++
  """
  def increment(a, b \\1), do: a + b 

  @doc """
  パイプ演算子を使う
  """
  def pipe(ls) do
    ls
    |> Enum.map(fn x -> x * x end)
    |> Enum.each(fn x -> IO.puts x end)
  end

end