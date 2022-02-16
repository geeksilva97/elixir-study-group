defmodule Hello do
 defmacro __using__(opts) do
   IO.inspect(opts)
   greeting = Keyword.get(opts, :greeting, "Hi")

   quote do
     def hello(name), do: "#{unquote(greeting)}, #{name}"
   end
 end

  def any_func do
   "any function" 
  end
end
