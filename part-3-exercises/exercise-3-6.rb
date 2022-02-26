#define a person class [x]
#define a module called traits[x]
    #define a method called eat [x]
    #print out 'eating -' [x]
#include the module in the person class [x]
    #allow each person instance to call these methods the module gives []

 
module Traits
  def eat(food)
    puts "I am eating #{food}."
  end
end

class Person
  include Traits 

end

person = Person.new 
person.eat(sandwiches)

