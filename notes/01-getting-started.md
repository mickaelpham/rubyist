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

* Programming error: when the program run, but the output is not what's expected
  (a.k.a it's the developer's fault).
* Syntax error: when you forgot how-to-ruby ;)

Run your program with:

    ruby -cw <your_program.rb>

The `-c` command flag is for *check for syntax errors* while the `-w` flag
activates a higher level of warning.

If everything is correct, you are rewarded with the message:

    Syntax OK

You can also use the `-e` command flag, which signals that you are providing an
inline script to the interpreter.

    $ ruby -e 'puts 1 + 2'
    3

### Ruby Installation (anatomy)

To find out where the Ruby executable files (including ruby and irb) have been
installed:

    $ irb --simple-prompt -rrbconfig
    >> RbConfig::CONFIG["bindir"]

Key Ruby directories and their `RbConfig` terms:

| Term        | Directory contents                                         |
|-------------|------------------------------------------------------------|
| rubylibdir  | Ruby standard library                                      |
| bindir      | Ruby command-line tools                                    |
| archdir     | Architecture-specific extensions and libraries (binaries)  |
| sitedir     | Your own or third-party extensions and libraries (in Ruby) |
| vendordir   | Third-party extensions and libraries (in Ruby)             |
| sitelibdir  | Your own Ruby language extensions (in Ruby)                |
| sitearchdir | Your own Ruby language extensions (in C)                   |

#### "Load"-ing a file

Three ways to have Ruby loading a file (or a feature) outside of your main
program:

1.  Using `load` so that Ruby read/execute the file passed in parameter.
2.  Using `require` to get a feature loaded (e.g. `require "scanf"`).
3.  Using `require_relative` to load features by searching relative to the
    current directory (not included in `$:` constant).

### The rake task-management utility

If you have a `Rakefile` located in the current directory, you can do something
like this in the command line:

    $ rake admin:clean_tmp

`rake` will executes the `clean_tmp` task defined inside the `admin` namespace.

If you are in a directory containing a `Rakefile` you can also run:

    $ rake --tasks

You will see a listing of all defined tasks (and their description).

