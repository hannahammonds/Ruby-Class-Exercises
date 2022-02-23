users = [
    {
        name: "John Doe",
        age: 43
    },
    {
        name: "Amy Singer",
        age: 53
    },
    {
        name: "Jimmy Lendricks",
        age: 23
    }
]

#while loop
#print value of each hash
#x is the starting point
x = 0
while x < users.length
    if users[x][:name].start_with?("Jimmy") 
        puts "My name and age is confidential"
    else
        puts "My name is #{users[x][:name]} and I am #{users[x][:age]}"
    end
    x += 1
end
