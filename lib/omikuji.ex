defmodule HelloIO do
  @moduledoc """
  入出力サンプル
  """

  @doc """
  コマンドライン
  """
  def start do
    Counter.stop()
    Counter.start_link()
    loop()
  end

  defp loop do
    input = IO.gets("press q to quit.\n >")

    case input do
      "q\n" ->
        IO.puts("close app.")
        exit(:ok)

      _ ->
        fortune() |> IO.puts()
        Counter.increment()
        IO.puts("count:#{Counter.value()}")
        loop()
    end
  end

  defp fortune do
    case Enum.random(0..10) do
      x when x > 9 -> "Great Blessing"
      x when x > 7 -> "Middle Blessing"
      x when x > 5 -> "Small Blessing"
      x when x > 3 -> "Blessing"
      x when x > 2 -> "Near Blessing"
      x when x > 1 -> "Curse"
      x when x >= 0 -> "Great Curse"
    end
  end
end
