####--- Broadcasting ---####

### Working with arrays: Broadcasting

# One of the most handy Julia tools: array broadcasting!

###Working with functions and arrays

#= 
Python and Matlab make exentsive use of C under the hood.
The user is encouraged to make use of vectorised code,
because a big part of the CPU time is spent oncalling the underlying routine.
Vectorized code refers to operations that are performed on multiple components of a vector at the same time (in one statement). 


In Julia, for loops are already as fast as they can be (close to the speed of C),
so there is no need to write vectorised code, as the interpreter will directly complie your code in optimised machine code which will
run as fast as possible on your machine. 

In Julia, nothing happens under the hood. =#

### Operations with arrays
# Julia by default deals with operations on arrays and matrices as one would do in mathematics.

a = [1, 2, 3] # column vectors have commas
b = [4, 5, 6] # column vectors have commas

# a*b ---> will produce an error because dimensions dont functions

c = [4 5 6] # row vectors dont have commas
a * c # works just fine! Outer product
c * a # Works fine! Inner product

d = reshape([1,2,3,4,5,6,7,8,9], 3, 3)

d * a

#= 
This makes perfectly sense from a mathematical point of view 
and operators behave how we would mathematically expect. 
Nonetheless, in programming it is often useful to write 
operations which work on an element by element basis, 
and for this reason   broadcasting   comes to our help. =#

## Broadcasting

# In Julia, with broadcasting we indicate the action
# of mapping a function or an operation 
# (which are the same in Julia) 
# over an array or a matrix element by element.



# d * a
# d .* a

a .* c
a * c


#  the core idea in Julia is to write functions that take single values and use broadcasting when needed, unless the functions must explicitly work on arrays (for example to compute the mean of a series of values, perform matrix operations, vector multiplications, etc).

# sin(a) ---> will error, as sin(array) is undefined. Instead:
sin.(a) # Output: sin(a[1]), sin(a[2]), ...

