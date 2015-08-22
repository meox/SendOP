defmodule SendOP do
  defmacro __using__(_) do
    quote do
      import Kernel, except: [{:~>, 2}, {:<~, 2}]
      import unquote(__MODULE__), only: [{:~>, 2}, {:<~, 2}]
    end
  end

  import Kernel, except: [{:~>, 2}]
  defmacro msg ~> p do
    quote do
      send(unquote(p), unquote(msg))
    end
  end

  import Kernel, except: [{:<~, 2}]
  defmacro p <~ msg do
    quote do
      send(unquote(p), unquote(msg))
    end
  end
end

