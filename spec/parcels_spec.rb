require('rspec')
require('parcels')

describe("Parcel#initialize") do
  it('creates a new ofject of class Parcel') do
    expect(Parcel.new(3,4,5,10).class).to(eq(Parcel))
  end
end

describe('Parcel#volume') do
  it("return the volume of a given Parcel object based on that object's dimensions") do
    expect(Parcel.new(2,2,10,10).volume).to(eq(40))
  end
end

describe('Parcel#cost_to_ship') do
  it('returns the price to ship a given Parcel based on the distance and desired speed of shipping') do
    expect(Parcel.new(2,2,10,10).cost_to_ship(5,100, true)).to(eq(17))
  end
end
