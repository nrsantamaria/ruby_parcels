require('rspec')
require('parcels')

describe("Parcel#initialize") do
  it('creates a new ofject of class Parcel') do
    expect(Parcel.new(3,4,5,10).class).to(eq(Parcel))
  end
end
