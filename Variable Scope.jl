# Variable Scope
# https://techytok.com/lesson-variable-scope/ 

#= 
The scope of a variable is the region of a program for which the variable is known and
accessible. A variable may live in two kinds of scope: the global and the local scope.

A variable in the global scope is accessible everywhere in the program and can be modified by any part of
the code. When we define a variable in the REPL or outside of a function, for example, we create a global variable.

A variable in a local scope is only accessible in that scope and in other scopes everntually
defined inside it.

In Juliia, the are several constructs which introduce a scope:

    - modlue, baremodule
    - interactive prompt (REPL)
    - struct, macro
    - for, while, try-catch-finally, let
    - functions
    - comprehensions, broadcast-fusing =#

# Local Scope
function example1()
    # global z = 42
    z = 42
    return z
end

# let construct