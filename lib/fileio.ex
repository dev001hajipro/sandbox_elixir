defmodule FileIO do
  def cwd do
    File.cwd()
  end

  def xxx do
    File.cwd()
    File.mkdir_p("tmp/hello")

    File.read!("lib/counter.ex") |> IO.puts()

    {:ok, file} = File.open("hello.txt", [:write])
    IO.binwrite(file, "hello world")
    File.close(file)
    File.rm_rf("tmp")
    File.rm("hello.txt")
  end
end
