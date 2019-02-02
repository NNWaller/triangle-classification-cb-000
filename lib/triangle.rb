class Triangle
  attr_accessor :length_1 , :length_2, :length_3

  def initialize(length_1, length_2, length_3)
   @length_1= length_1
   @length_2 = length_2
   @length_3 = length_3
  end

  def kind
    #if triangle is illegal raise a custom error that the triangle is invalid --- the sum of the length
      #of any two sides is not more than the length of the 3rd side or each side is 
      #not longer than 0
    #elsif condition met :equilateral  same length on all sides 
    #elsif condition met :isosceles two sides same legth
    #elsif condition met :scalene  all sides different lengths 
   # Not sure why I didn't need to have the begin and rescue wording below, but it all functions properly
     # begin
      # raise TriangleError
      #rescue TriangleError => error
      #  puts error.message
     # end
    
    if !((length_1 + length_2) > length_3) || !((length_1 + length_3) > length_2) || !((length_2 + length_3) > length_1)
         raise TriangleError
         puts error.message
    
    elsif length_1 == length_2 && length_2 == length_3
      :equilateral
  
    elsif length_1 == length_3 && length_2 != length_1
      :isosceles
    elsif length_2 == length_3 && length_2 != length_1
      :isosceles
    elsif length_1 == length_2 && length_2 != length_3
      :isosceles
    elsif length_1 != length_2 && length_1 != length_3
      :scalene
    end
  end
    

  class TriangleError < StandardError
    def message
      "Invalid triangle! A triangle must have sides that are longer than 0 and the sum of the length of any two sides must be more than the length of the 3rd side."
  
    end
  end

end
