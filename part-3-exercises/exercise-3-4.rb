class Person
    attr_accessor :first_name, :last_name, :age

    def initialize(firstname, lastname, age)
        @first_name = firstname
        @last_name = lastname
        @age = age
        @@people.push(self)
    end

    @@people = []
    #class method print_all_people
    def Person.print_all_people 
        #loop through people and print name and age
        @@people.each do |person|
            puts "Name: #{person.first_name} #{person.last_name}, Age: #{person.age}"
        end
    end

Person.new("John", "Doe", 54)
Person.new("Hannah", "Hammonds", 41)
Person.print_all_people
end 


