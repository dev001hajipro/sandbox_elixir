defmodule MyType do
  defstruct first: nil, last: nil

  # これで、t型は任意の値(a, b)を取るMyType構造体であることを示す。
  @type t(a, b) :: %MyType{first: a, last: b}
  # これで、t型が構造体のキー(firstとlast)がintegerであることを示す
  @type t :: %MyType{first: integer, last: integer}

  @spec sum_product(integer) :: integer
  def sum_product(a) do
    [1, 2, 3]
    |> Enum.map(fn el -> el * a end)
    |> Enum.sum()
  end

  # @spec sum_times(integer, %MyType{first: integer, last: integer}) :: integer
  # @typeを用意すれば@specに型を書ける。
  @spec sum_times(integer, MyType.t()) :: integer
  def sum_times(a, params) do
    for(n <- params.first..params.last, do: n)
    |> Enum.map(fn el -> el * a end)
    |> Enum.sum()
    |> round
  end

  # @spec show_struct(%MyType{first: integer, last: integer}) :: :ok
  @spec show_struct(MyType.t()) :: :ok
  def show_struct(params) do
    IO.puts("#{params.first}")
    IO.puts("#{params.last}")
  end

  def run_fn do
    MyType.sum_times(10, %{first: 1, last: 5}) |> IO.puts

    MyType.show_struct(%{first: 1, last: 5})
  end
end
