defmodule Listener do
  @moduledoc """
  spawn_linkを使ったサンプル。
  """
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    # この再帰で、メッセージ受信後、さらにメッセージを受信できるようにする。
    listen()
  end

  @doc """

    > spawn_link(Listener, :shutdown, [])
  """
  def shutdown() do
    exit(:kaboom)
  end

  def run do
    # トラップ
    IO.puts("make trap")
    Process.flag(:trap_exit, true)
    # 子プロセスを起動し、exitで終了

    child_pid = spawn_link(Listener, :shutdown, [])
    IO.puts("child pid: #{inspect(child_pid)}")

    IO.puts("wait recieve")
    # メッセージ受信待機
    receive do
      {:EXIT, from_pid, reason} -> IO.puts("Exit reason: #{reason} #{inspect(from_pid)}")
    end
  end
end
