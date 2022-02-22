print "What is your first name? "
first_name = gets.chomp.downcase 
print "What is your last name? "
last_name = gets.chomp.downcase



if first_name == "john" && last_name == "doe"
    puts "I found you!"
elsif first_name == "amy" && last_name == "jeans"
    puts "Amy, help me look for John Doe!"
else
   puts "#{first_name}, you're not who I'm looking for!"
end

