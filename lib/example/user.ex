defmodule Example.User do
  @moduledoc """
  モジュール、構造体のサンプル
  """

  @const_max 100
  @module_version 1.0

  # 構造体
  defstruct name: "Sean", role: []

  def pri() do
    IO.puts("const_max=#{@const_max}")
    IO.puts("module_version=#{@module_version}")
  end
end
