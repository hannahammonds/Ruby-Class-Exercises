class Box
    attr_accessor :side_1, :side_2, :side_3, :side_4, :side_5, :side_6
  
    def initialize(sideone, sidetwo, sidethree, sidefour, sidefive, sidesix)
      @side_1 = sideone
      @side_2 = sidetwo
      @side_3 = sidethree
      @side_4 = sidefour
      @side_5 = sidefive
      @side_6 = sidesix
    end

    def to_s
        "SideOne: #{@side_1}, SideTwo: #{@side_2}, SideThree #{@side_3}, SideFour #{@side_4}, SideFive: #{@side_5}, SideSix: #{@side_6}"
    end
end
  
  box1 = Box.new("s1-1", "s2-1", "s3-1", "s4-1", "s5-1", "s6-1")
  box2 = Box.new("s1-2", "s2-2", "s3-2", "s4-2", "s5-2", "s6-2")
  box3 = Box.new("s1-3", "s2-3", "s3-3", "s4-3", "s5-3", "s6-3")
  
  puts box1 
  puts box2
  puts box3 