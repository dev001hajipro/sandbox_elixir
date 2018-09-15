defmodule Macro.HelloMacroOpt do
  defmacro __using__(opts) do
    greeting = Keyword.get(opts, :greeting, "Hi")

    quote do
      def hello1(name), do: unquote(greeting) <> ", " <> name
    end
  end

end
