# SandboxElixir

Elixirを学習するためのサンドボックスプロジェクト。

## Windows10でのiex
Windows10の場合は、`iex.bat --werl`で起動するのが無難。
- PowerShellではInvoke-Expressonのエイリアスとしてiexがあるため、`iex.bat`として呼ぶ。
- `--werl`オプションで、GUIでErlangシェルが起動する

### PowerShellでibx.batのclose
Ctrl+GやCtrl+Cが効かないため、`:init.stop()`を使う。:initは、ErlangのAPI呼び出し。

```
ibx.bat --werl -S mix
```
```
:init.stop()
```
### mix run
```
mix run -e "モジュール名.関数名()"
mix run -e "SandboxElixir.hello()"
```
シェルから呼び出す場合
```
> iex.bat -S mix
> SandboxElixir.hello()
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sandbox_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sandbox_elixir, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/sandbox_elixir](https://hexdocs.pm/sandbox_elixir).

