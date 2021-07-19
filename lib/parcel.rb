require 'pry'

class Parcel
  attr_accessor(:width, :length, :height, :weight)

  @@parcel = {}

  def initialize(width, length, height, weight)
    @width = width
    @length = length
    @height = height
    @weight = weight
  end

  def self.all()
    @@parcel.values
  end
end

# describe '#Check_Triangle' do
#   it("should create an empty triangle object") do
#     is_triangle = Check_Triangle.new("side1","side2","side3")   
#     expect(is_triangle.side1).to(eq('side1'))
#   end

# def initialize(side1, side2, side3)
#   @side1 = side1
#   @side2 = side2
#   @side3 = side3
# end

# class Album
#   @@albums = {}

#   def self.all()
#     @@albums.values
#   end
# end