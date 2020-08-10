####--- Data Structures ---####

### Arrays

## Vectors

#= 
A vector is a list of data sharing the same type (Int, Float, Any, ...)
Vector and Array are used as synonyms
https://techytok.com/lesson-data-structures/ =#

a = [1, 2, 3, 4, 5]
b = [1.2, 3, 4, 5]
c = ["Hello", "it's me", "how can I help"]

# print(c[3])
# In Julia, vector indexes starts at 1

# append!(a, 6)
# append!(a, 3.14)
# typeof(a)

d = Int[1, 2, 3, 4, 5] # Be specific about the type

## Matrices
# Matrices are two dimensional Arrays
mat1 = [1 2 3; 4 5 6]
# Rows are separated by semi colons ; and columns are separated by spaces.

# let’s suppose we want to create a 2x3x4 table, we would do it with zeros(2,3,4). Let’s suppose we want to fill it with the product of the indexes, we can do it in the following way:
table = zeros(2, 3, 4)
for k in 1:4
    for j in 1:3
        for i in  1:2
            table[i, j, k] = i * j * k
        end
    end
end

table
#= 
Please not that Julia stores values in memory differently from 
Python: in Julia to obtain fast loops we need to iter first over 
columns (which means that the first index must vary first 
and so on). For this reason if we plan to store, for example, 
42 2x2 matrices, we need to create an array of size 2x2x42 
(while in Python we would have created a 42x2x2 table). =#

## Slices

# a = [1, 2, 3, 4 , 5, 6]
# b = a[2:5]

# for i in a
#     print(i)
# end

mat1 = reshape([i for i in 1:16], 4, 4)
mat2 = mat1[2:3, 2:3]

# Nested list comprehension
# [i+j for i in 1:10 for j in 1:5]

# Views
# As in other programming languages, arrays are pointers to location in memory, thus we need to pay attention when we handle them.
# If we create an array a and we assign a to b with b=a, the elements of a be modified by accessing b:

a = [1, 2, 3]
b = a
b[2] = 42
print(a)

# This is particularly useful because it lets us save memory, but may have undesirable effects. If we want to make a copy of an array we need to use the function copy

a = [1, 2, 3]
b = copy(a)
b[2] = 42
a
b

## Tuples
# A tuple is a fixed size group of variables which may share a common type but don’t need to.
tuple1 = (1, 2, 3)
cool = 1, 2, 3
a, b, c = tuple1
print("$a, $b, $c")

# Splatting

# It is possible to “unpack” a tuple and pass its arguments to a function with the following syntax:

function splat_me(a, b, c)
    return a * b * c
end

tuple3 = (1, 2, 3)
splat_me(tuple3...)
# So the ... after a tuple will unpack it! This is useful but addictive, use it only if needed as it is better for clarity (and to avoid multiple dispatch errors) to call a function with its single parameters.

# Named Tuples
namedTuple1 = (a = 1, b = "hello")

namedTuple1[:b]

# What's the difference between a named tuple and a dictionary?
# Tuples are fixed size and ordered
## Dictionaries

# A dictionary is a collection of keys and values. They are unordered (which means that the order of the keys is random) and are really useful when you need to organise, for example, a dataset.

person1 = Dict("Name" => "aurelio", "Phone" => 123454321, "Shoe-size" => 40)

addressBook = Dict("Aurelio" => person1)

person2 = Dict("Name" => "Dings", "Phone" => 1223, "Shoe-size" => 3)
addressBook["Vittorio Dings"] = person2

