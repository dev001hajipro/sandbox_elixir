defmodule Counter do
  @moduledoc """
  Agent機能で作ったカウンター。アプリケーション起動中状態保持ができる。
  """

  use Agent

  def start_link do
    Agent.start_link(fn -> 0 end, name: __MODULE__)
  end

  def value do
    Agent.get(__MODULE__, & &1)
  end

  def increment do
    Agent.update(__MODULE__, &(&1 + 1))
  end

  def stop do
    Agent.stop(__MODULE__)
  end
end
