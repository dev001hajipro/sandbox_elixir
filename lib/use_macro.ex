defmodule UseMacro do
  use Macro.HelloMacro
  use Macro.HelloMacroOpt, greeting: "Hola"
end
