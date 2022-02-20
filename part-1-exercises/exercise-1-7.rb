def multiply_by_two(num)
  num.to_f * 2
end
def divide_by_two(num)
  num.to_f / 2
end

puts "Please enter a sentence: "
sentence = gets.chomp
puts "You typed: " + '#{sentence}'
puts "What number do you want to multiply by two?"
mult = gets.chomp

puts "#{mult} multipled by 2 is ", multiply_by_two(mult)

puts "What number do you want to divide by two?"
divide = gets.chomp

puts "#{divide} divided by 2 is ", divided_by_two(divide)
