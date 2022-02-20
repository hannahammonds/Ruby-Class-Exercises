def add (num_1, num_2)
  sum = num_1.to_i + num_2.to_i
end

def subtract (num_1, num_2)
  sub = num_1.to_i - num_2.to_i
end

def multiply (num_1, num_2)
  mult = num_1.to_i * num_2.to_i
end

def divide (num_1, num_2)
  div = num_1.to_f / num_2.to_f
end

puts "Type a number: "
num_1 = gets.chomp
puts "Type a second number: "
num_2 = gets.chomp

puts "Your numbers added together is #{add(num_1, num_2)}"

puts "Your numbers subtracted  is #{subtract(num_1, num_2)}"

puts "Your numbers multiplied together is #{multiply(num_1, num_2)}"

puts "Your numbers divided together is #{divide(num_1, num_2)}"
