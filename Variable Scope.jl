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
a = let 
    i = 3
    i += 5
    i # the value from the computation
end

b = let i = 5
    i += 42
    i
end

c = let i = 10
    i += 42
    i
end

# i -> i undefined in global scope
# begin doesnt introduce a local scope

d = begin
    i = 41
    i += 1
    i
end

d
i

# Global Scope
#= 
Whenever we define a variable in the REPL or in general outside a construct which 
introduces a local scope, we place a variable in the global scope. The global scope 
is accessible everywhere in the program and a variable in the global scope can be modified 
by any part of the code. As such, it is generally advisable to avoid using global variables 
as much as possible, in fact since global variables can change 
their type and value at any time, they cannot be properly optimised by the compiler. =#

# Constants
const C = 299792458 # m / s, this is an Int 

C = 30000000 # change the value of C 
C = 2.99 # change of type not allowed

# Modules

# Idk yet what modlues are and should return later

# Conclusions
#= 
1. Avoid using global variables as much as possible, if global variables 
are needed define them as const.

2. Pass all the required parameters to a function instead of defining them as global variables, 
   a function should be able to ideally operate only on its input.

3. Use functions and let blocks to introduce local scopes where you can define as many 
variables as you desire without incurring 
in the risk of overlapping variable names with those used in other parts of your code. =#
