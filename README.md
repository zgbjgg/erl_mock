erl_mock is an erlang library to help you to write mock.

### Compiling

	$ make

All beam files are placed into ebin directory.

### Cleaning

	$ make clean

### Example

If you have a function in a module like this:

```erlang
-module(example).
-export([one/1]).

one(A) ->
    A + 1.
```

And you have mock the module and function, use in the next way:

Start mock:
```erlang
mock:start()
```
Add module to mock:
```erlang
mock:add_module(example)
```
Set the response for the function:
```erlang
mock:set_answer(example, one, 10)
```
To unload mock:
```erlang
mock:uninstall(example)
```
Now, if you want get all calls to the module:
```erlang
[Call1, Call2] = mock:calls()
```
