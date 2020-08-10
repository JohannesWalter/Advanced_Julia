using Pkg
Pkg.add("QuadGK")
using QuadGK

number = 42
my_name = "Johannes"
typeof(number)
typeof(my_name)


a = 2
b = 3
sum = a + b
difference = a - b
product = a * b
quotient = b / a
power = a^3
modulus = b % a


typeof(-2)
typeof(1)
typeof(0.1)
typeof("1")

# Ypu can convert types
c = 2
d = convert(Float64, c)

# Defining functions

function plus_two(x)
    # perform some operation
    return x + 2
end 

plus_two(3)

# In line version of function definition
plus_four(x) = x + 4
plus_four(4)


function myWeight(weightOnEarth, g=9.81)
    return weightOnEarth * g / 9.81
end

myWeight(47, 3.72)


f(x, y, z) = (x^2 + 2y) * z
arg(x) = f(x, 42, 4)

quadgk(arg, 3, 4)

function integral_of_f(y, z)
    arg(x) = f(x, y, z)
    result = quadgk(arg, 3, 4)
    return result
end

# Void functions

function say_hi()
    println("Hello from Me!")
    return
end

# Keyword arguments
"""
This description is essentially useless
"""
function long_function(a, b=2; c, d=3)
    return a + b + c + d
end

long_function(1, c=3)


# Control Flow
# If ...else
function absolute(x)
    if x >= 0
        return x
    else
        return -x
    end
end

if 1 < 3 & 3 < 4
    print("eureka!")
end

x = 42
if x < 1
    print("$x < 1")
elseif x < 3
    print("$x < 3")
elseif x < 100
    print("$x < 100")
else
    print("$x is really big!")
end

name1 = "name1"
name2 = "name2"
print("Welcome $name1, this is $name2 :)")

# For loops
for i in 1:10
    println(i^2)
end

persons = ["Alice", "Bob", "Carla", "Daniel"]

for person in persons
    println("Hello $person, welcome to the party")
end

for i in 1:30
    if i % 3 == 0
        continue
    else
        println(i)
    end
end

x = ["a", "b", "c"]
for couple in enumerate(x)
    println(couple)
end


my_array1 = collect(1:10)
my_array2 = zeros(10)
for (i, element) in enumerate(my_array1)
    my_array2[i] = element^2
end
print(my_array2)

if "Alice" in persons
    println("Yes")
end
