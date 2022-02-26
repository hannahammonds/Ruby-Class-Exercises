#define 4 classes: person, doctor, teacher, engineer[x]

class Person
    attr_accessor :weight, :height, :name

#define instance method called eat with parameter 'food' [x]
#In Person, create attributes weight, height, name. [x]
#in person, define an initialize method and set these atributes by passing in arguments upon instantiation [x]
  def eat(food)
    puts "I ate #{food}."
  end

  def initialize(weight, height, name)
    @weight = weight
    @height = height
    @name = name 
  end

end

#Person.new(160, 5.9, "Hannah")
#puts person

class Doctor < Person 
#inherit from person [x]
#print out 'I am a _' [x]
  def initialize(weight, height, name)
    super
    puts "I am a doctor"
  end
end

class Teacher < Person
    def initialize(weight, height, name)
        super
        puts "I am a teacher."
      end
end

class Engineer < Person
    def initialize(weight, height, name)
        super
        puts "I am an engineer."
      end
end

doctor = Doctor.new(200, 6.2, "Zach")
teacher = Teacher.new(160, 5.9, "Hannah")
engineer = Engineer.new(180, 6.0, "Andrew")
#create a _ instance and check if they contain these attributes and methods inherited from the parent class Person[x]

teacher.eat("soup")