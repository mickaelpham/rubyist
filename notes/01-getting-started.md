### Variables and Conventions

| Type     | Ruby Convention | Description                                |
|----------|-----------------|--------------------------------------------|
| Local    | `first_name`    | Locals to the block they are executed from |
| Instance | `@first_name`   | Store information for individual objects   |
| Class    | `@@first_name`  | Store information per class hierarchy      |
| Global   | `$FIRST_NAME`   | Global variables, duh!                     |

### Method Names

Same convention as local variables, except that tehy can end with `?`, `!`, or `=`.
