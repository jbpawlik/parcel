require 'pry'

class Parcel
  attr_accessor(:name, :width, :length, :height, :weight, :id)

  @@parcels = {}
  @@total_rows = 0


  def initialize(name, width, length, height, weight, id)
    @name = name
    @width = width
    @length = length
    @height = height
    @weight = weight
    @id = id || @@total_rows += 1
  end

  def self.all
    @@parcels.values()
  end

  def save
    @@parcels[self.id] = Parcel.new(self.name, self.width, self.length, self.height, self.weight, self.id)
  end

  def ==(parcel_to_compare)
    self.name() == parcel_to_compare.name()
  end

  def self.clear
    @@parcels = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@parcels[id]
  end

  def update(name)
    @name=name
  end

  def delete
    @@parcels.delete(self.id)
  end
end


