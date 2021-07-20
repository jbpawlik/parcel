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

