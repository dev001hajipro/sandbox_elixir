defmodule SandboxElixir do
  import Greeting
  @moduledoc """
  Elixir学習サンドボックス
  """

  @doc """
  エントリーポイント。:world アトムを返す。

  ## Examples

      iex> SandboxElixir.main()
      :world

       mix run -e "SandboxElixir.main()"

  """
  def main do
    show_helloworld()
    sayhello("smith")
    Greeting.pipe(1..5)
    :world
  end

  @doc """
  testサンプル
  """
  def hello do
    :world
  end
end
