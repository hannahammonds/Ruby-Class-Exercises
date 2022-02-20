sentence = "Hello John Doe!"

new_sentence = sentence.gsub("Hello", "Hi")

puts new_sentence

solution = "Hi John Doe!"
puts solution.match?(new_sentence)

