### Object, methods and local variables

Unlike Java, objects in Ruby are much more powerful. They are able to learn new
methods at runtime, so their behabior can be extended on the fly.

    ticket = Object.new
    puts ticket.price # error!
    def ticket.price
        117.20
    end
    puts "$#{ticket.price}" # display $117.20

In Ruby, you **talk** to objects, or more importantly you **send a message** to
an object and it looks if it can **respond** to this message.

This allow some dynamic possibilities like:

    if ticket.respond_to?(method_name)
        puts ticket.__send__(method_name)
    end

Note that we are using `__send__` instead of simply `send` because (1) it's
considered best practices and (2) if developers follow the naming convention,
they should not define a method named `__send__` in their program.

### Expressing Boolean state in a method

Every expression in Ruby evaluates to an object, and every object in Ruby has a
truth value, which is almost always `true`. The only objects whose truth value
is `false` are the object `false` and the special nonentity object `nil`.

    if 123
        puts "God damnit, this is crazy"
    end
    # 123 will be evaluated to true

### What does an object know?

    p Object.new.methods.sort

An `Object`, contrary to a `BasicObject`, knows quite a few methods. The three
innate methods to remember are:

1.  `object_id`: every object in Ruby has a unique ID number.
2.  `respond_to?`: does an object know how to handle this message?
3.  `__send__`: send the message to the object.

### Method arguments

In Ruby, an argument can be:

*   Required or Optional
    -   `def two_or_more(required_a, required_b, *optional_c)`
*   It can also have a default value
    -   `def two_with_default(a, b=2)`

Also, it's important to note that required arguments take priority over 
optional ones. That's it, Ruby will try to fill the required ones first,
and if there is any left it will fill the optional ones.

You can also have an optional argument right in the middle of the method's
definition, e.g.

    def in_the_middle(a, *b, c)
    end
    in_the_middle(1, 2, 3, 4)
    # a = 1, b = [2, 3] and c = 4

Note that optional argument can take zero to X values! Also you **cannot** have
the optional argument written to the **left** of a default-value argument.

    def invalid_args(x, *y, z=1) # it's invalid!

### Methods toolbox

*   `freeze`: call on an object to freeze it, preventing further changes.
    -   Note, it's **not** reversible!
*   `dup`: to duplicate this object (**not** keeping it's frozen state if
    any).
*   `clone`: if you `clone` a frozen object, the clone is also frozen.