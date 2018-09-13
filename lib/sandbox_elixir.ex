defmodule SandboxElixir do
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
    :world
  end

  @doc """
  testサンプル
  """
  def hello do
    :world
  end

  def control_case(tpl) do
    case tpl do
      {:success, result} -> result
      {:failure, _} -> :failure
    end
  end

  def control_case2(tpl) do
    case :even do
      :odd -> "aaa"
      _ -> "bbb"
    end

    case tpl do
      {:ok, value} -> String.length(value)
      error -> error
    end
  end
end
