defmodule TodoApp do
  @moduledoc """
  TODOアプリ
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

  def make_data() do
    [
      %{:id => 1, "title" => "Elixirについて", "complated" => false},
      %{:id => 2, "title" => "Elixirについて", "complated" => false}
    ]
  end
end
