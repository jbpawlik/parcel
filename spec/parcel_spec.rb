require 'rspec'
require 'parcel'

describe 'parcel' do 
  it("should create a parcel object with inputted qualities") do
    parcel = Parcel.new("width", "length", "height", "weight")
    expect(parcel.width).to(eq('width'))
  end
end