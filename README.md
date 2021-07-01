# CrappyConsole
A crappy console created in Godot to simulate printf/scanf commands in GDScript.

```
  __                _     _
 / _|_   _____ __ _| | __| | ___ _ __ __ _ _ __
| |_\ \ / / __/ _` | |/ _` |/ _ \ '__/ _` | '_ \
|  _|\ V / (_| (_| | | (_| |  __/ | | (_| | | | |
|_|   \_/ \___\__,_|_|\__,_|\___|_|  \__,_|_| |_|

BSD 3-Clause License
Copyright (c) 2021, Felipe V. Calderan
All rights reserved.
See the full license inside LICENSE file
```
![Image](https://github.com/fvcalderan/CrappyConsole/blob/main/screenshot.png?raw=true)

### Why?

Because GDScript does not provide a function to get user inputs in the console
like C's `scanf` or Python's `input`. This prevented me from building simple
programs for a console-like environment to test some piece of code or just
practice plain GDScript.

### How to use it

Open the project in Godot and edit `main.gd`. The `_ready` function works like
C's `main`, or GDScripts `SceneTree`'s `_init` function.

To prompt the user for an input, use the `scanf` function, like this:
```gdscript
var a = yield(scanf("Type the value for A: "), "completed")
```

To print something to the console, use the `printf` function, like this:
```gdscript
print("The value of A is %f" % a)
```

Yes, `scanf` is very janky, but it does the job :D

### Why scanf and not input?

I agree that the `scanf` function is more similar to Python's `input` than to
C's `scanf`, but it triggered me that I couldn't name the print function just
`print` (since Godot already uses this name), so I called it `printf` and then
it would be a crime to call the input function `input`.

Anyway, you have the source, so go already and call it `input`, you monster!

Have fun c:
