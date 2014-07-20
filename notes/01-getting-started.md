### Variables and Conventions

| Type     | Ruby Convention | Description                                |
|----------|-----------------|--------------------------------------------|
| Local    | `first_name`    | Locals to the block they are executed from |
| Instance | `@first_name`   | Store information for individual objects   |
| Class    | `@@first_name`  | Store information per class hierarchy      |
| Global   | `$FIRST_NAME`   | Global variables, duh!                     |

### Method Names

Same convention as local variables, except that tehy can end with `?`, `!`, or
`=`. This particularity is explained later.

### Running a program

#### Checking for syntax errors

* Programming error: when the program run, but the output is not what's expected (a.k.a it's the developer's fault).
* Syntax error: when you forgot how-to-ruby ;)

Run your program with:

    ruby -cw <your_program.rb>

The `-c` command flag is for *check for syntax errors* while the `-w` flag
activates a higher level of warning.

If everything is correct, you are rewarded with the message:

    Syntax OK
