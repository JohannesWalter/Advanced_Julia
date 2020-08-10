#### Control Flow
function absolute(x)
    if x >= 0
        return x
    else
        return -x
    end
end 

# and is written as  &
# or is written as  ||

name1 = "Name1"
name2 = "name2"

# Loops
# for Loops

for i in 1:10
    println(i^2)
end

persons = ["a", "b", "c"]
for person in persons
    println(person)
    println("Hello $person")
end
# break, continue work as expected

# while Loops
function while_test()
    i = 0
    while (i < 30)
        println(i)
        i += 1
    end
end

# enumerate
x = ["a", "b", "c"]
for couple in enumerate(x)
    println(couple)
end

for i in 1:length(x)
    println(x[i])
end

my_array = collect(1:10)
my_array2 = zeros(10)

for (i, element) in enumerate(my_array)
    my_array2[i] = element^2
end