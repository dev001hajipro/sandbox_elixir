defmodule Mix.Tasks.Hello do
  @moduledoc """
  Mixのカスタムタスク
  """

  use Mix.Task

  @shortdoc "Simply runs the Greeting.hello/1 command."
  def run(_) do
    Greeting.hello("tasuku")
  end
end
