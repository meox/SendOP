SendOP
=========

This is a simple module that implement a "nice" sender operator for Elixir.
This module consist in two functions:
- :~>/2 (the left object is the message, the right object is the pid)
- :<~/2 (the left object is the pid, the right object is the message)

## Example
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

## References
https://github.com/alco/pipespect
https://groups.google.com/forum/#!searchin/elixir-lang-talk/infix$20operator/elixir-lang-talk/pTde-7d52QY/k4tKtvFhnqIJ

## License
This software is licensed under [the MIT license](LICENSE).
