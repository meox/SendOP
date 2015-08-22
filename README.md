# SendOP
This is a simple module that implement a "nice" sender operator for Elixir.
This module consist in two functions:
- :~>/2 (the left object is the pid, the right object is the message)
- :<~/2 (the left object is the pid, the right object is the message)

###Example:
```
neo = spawn_link(...)
{:trinity, "Neo, wake up!"} ~> neo
```

or we can use a more Erlang compliant syntax:
```
neo <~ {:trinity, "Neo, wake up!"}
```

This examples are eqivalents to this code (elixir-style):

```
neo |> send {:trinity, "Neo, wake up!"}
```
