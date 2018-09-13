defmodule SimpleQueue do
  use GenServer

  @moduledoc """
  # GenServerを使ったキュー

  ### 参考資料
  - https://elixirschool.com/ja/lessons/advanced/otp-concurrency/
  """

  @doc """
  キューの実体はGenServerで、この関数の引数でキューを初期化し開始します。
  """
  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  @doc """
  GenServer.init/1 コールバック
  start_linkで起動した後に呼ばれます。
  """
  def init(state), do: {:ok, state}

  @doc """
  GenServer.handle_call/3 コールバック
  dequeue, do: GenServer.call実行で、呼び出されます。
  データ取得
  """
  def handle_call(:dequeue, _from, [value | state]) do
    {:reply, value, state}
  end

  # データがないとき
  def handle_call(:dequeue, _from, []), do: {:reply, nil, []}
  # :queue データ表示
  def handle_call(:queue, _from, state), do: {:reply, state, state}

  def dequeue, do: GenServer.call(__MODULE__, :dequeue)

  @doc """
  データ表示
  """
  def queue, do: GenServer.call(__MODULE__, :queue)

  @doc """
  GenSErver.cast/2 コールバック
  valueをstateに追加する
  """
  def handle_cast({:enqueue, value}, state) do
    {:noreply, state ++ [value]}
  end

  def enqueue(value), do: GenServer.cast(__MODULE__, {:enqueue, value})
end
