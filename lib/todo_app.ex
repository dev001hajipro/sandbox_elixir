defmodule TodoApp do
  @moduledoc """
  アプリ
  """

  @doc """
  return :hello atom.
  """
  def hello() do
    :hello
  end

  def reset_data() do
    []
  end

  def make_test_data() do
    [
      %{:id => 1, "title" => "Elixirの入門としてアプリを作ろう", "complated" => false},
      %{:id => 2, "title" => "プロセスを沢山立ち上げよう", "complated" => false}
    ]
  end
end
