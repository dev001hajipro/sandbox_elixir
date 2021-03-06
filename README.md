# SandboxElixir

Elixirを学習するためのサンドボックスプロジェクト。

## Windows10でのiex

Windows10の場合は、`iex.bat --werl`で起動するのが無難。

- PowerShellではInvoke-Expressonのエイリアスとしてiexがあるため、`iex.bat`として呼ぶ。
- `--werl`オプションで、GUIでErlangシェルが起動する

### PowerShellでibx.batのclose

Ctrl+GやCtrl+Cが効かないため、`:init.stop()`を使う。:initは、ErlangのAPI呼び出し。

```powershell
ibx.bat --werl -S mix
```

```erlang
:init.stop()
```

### mixでプログラムを実行する

`mix run`でmain関数やエントリーポイントを呼び出さないので、`mix run -e "モジュール名.関数名()"`を使います。

```powershell
mix run -e "SandboxElixir.hello()"
```

シェルから呼び出す場合

```powershell
iex.bat -S mix
> SandboxElixir.hello()
```

### シェル上でプロジェクトの再コンパイル

`iex.bat -S mix`でmixプロジェクトをビルドしてElixirのシェルを起動。`recomplie`でプロジェクト全体をコンパイルする。

```powershell
> recompile
```

### コード整形

mixを使っていれば、formatterが付いてくる。

```powershell
mix format
```

### ファイル更新の監視と単体テスト実行

mixプロジェクトの依存に`mix_test_watch`を追加して、コンソールで、
`mix test.watch`を実行するとファイル監視します。

```bash
> mix test.watch
```

:kissing_closed_eyes:

## Windowsでのドキュメントの表示

chcpコマンドでコードページを65001(UTF-8)にする

```powershell
> chcp 65001
```

```powershell
iex.bat -S mix
iex(1)> h Example
* Example

プロセスの入門

```

## 参考資料

- [Elixir の Enum メモ](https://qiita.com/ohakado/items/9ceee374331feb199544)
- [挑戦！ Elixirによる並行・分散アプリケーションの作り方【第二言語としてのElixir】](https://employment.en-japan.com/engineerhub/entry/2017/06/19/110000)
- [https://qiita.com/advent-calendar/2017/elixir-or-phoenix](https://qiita.com/advent-calendar/2017/elixir-or-phoenix)

- [](https://qiita.com/HirofumiTamori/items/b6957686e0ba93006184)

### バイトコード一覧

- [genop.tab](https://github.com/erlang/otp/blob/master/lib/compiler/src/genop.tab)

### Dialyxir and Dialyzer

- [Dialyxir and Dialyzer](https://elixirschool.com/en/lessons/specifics/debugging/)

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
