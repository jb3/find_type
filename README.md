# FindType

## What is this?

A simple library I made because I got bored of having to open up IEx and find the type of something.

## Is there any use for it?

Probably not.

## How are you?

good thanks.

## Usage

```elixir
iex(1)> FindType.find :hello
:atom
iex(2)> FindType.find 1
:integer
iex(3)> FindType.find spawn fn -> IO.puts "hi" end
:pid
```

That is pretty much it.

## Installation

For now, just add this to your `mix.exs`

```elixir
defp deps() do
    [{:find_type, github: "JoeBanks13/find_type"}]
end
```

Easy. I know.
