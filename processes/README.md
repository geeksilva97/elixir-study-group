# Processes
Tudo em Elixir/Erlang é um processo. Processos em elixir são diferentes de processos do sistema operacional, eles são criados e gerenciados pela VM do Erlang, a BEAM.

Processos são a base da concorrência em sistemas Erlang/Elixir. Eles podem ser usados para tudo. Processos estão para elixir como objetos estão para Java e demais linguagens OO.

Nessa comparacao um processo é um objeto e a passagem de mensagens faz as vezes de métodos.

Passagem de mensagens é como processos se comunicam. Eles não compartilham estado nenhum e mensagens é o seu único meio de comunicação.

We can generate processes by using `spawn/` function and we can read the incoming messages using the `receive` instruction.

## Spawning processes

### Spawning from module
### Spawning a anonymous function

## Passing messages

We can pass messages by using the function `send/2`. This function receives the pid (`pid()`) and the message (`term()`).

Everything is a process. It means that our `iex` is a process. We can check the pid of our iex instance we can call the `self()` function.

We can send messages to any living process, included the sender. So we can send messages from `iex` to `iex`. Look at the example shown below.

```sh
iex(1)> me = self()
#PID<0.285.0>
iex(2)> send(me, :hi)
:hi
iex(3)> send(me, "What's your name?")
"What's your name?"
```

We can get process info by using the module `Process`. Let's check some usage examples.

- Process.alive?/1 - returns whether a process is alive
- Process.info/1 - return informations about a given process
- Process.info/2 - get specific process info

```sh
iex(4)> Process.alive?(me)
true
iex(5)> Process.info(me)
...
iex(6)> Processes.info(me, :messages)
{:messages, [:hi, "What's your name?"]}
```

## Server processes

## Linking processes

## Monitoring processes

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `processes` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:processes, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/processes>.

