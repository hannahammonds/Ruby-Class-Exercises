class Animal
    attr_accessor :name, :animal_type, :color

    def initialize(name, animalType, color)
        @name = name
        @animal_type = animalType
        @color = color
    end

    def intro
        puts "Hey, my name is #{@name}. I am a #{@animal_type}. My fur color is #{@color}."
    end
end

clifford = Animal.new("Clifford", "dog", "red")
clifford.intro 
