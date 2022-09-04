require 'rspec'
require './lib/room.rb'
require './lib/apartment.rb'
require './lib/building.rb'

RSpec.describe Building do
  it 'exist' do
    building = Building.new("623", "Savills Apartment Building")
    expect(building).to be_a(Building)
  end

  it 'can read building_number and building_name' do
    building = Building.new("623", "Savills Apartment Building")

    expect(building.building_number).to eq("623")
    expect(building.building_name).to eq("Savills Apartment Building")
  end

  xit 'can have apartments' do
    building = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new

    building.add_apartment(apt_1)

    expect(building.list_apartments).to eq(apt_1)
  end

  it 'can have more than 4 apartments' do
    building = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    apt_5 = Apartment.new

    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    building.add_apartment(apt_3)
    building.add_apartment(apt_4)
    building.add_apartment(apt_5)

    expect(building.list_apartments).to eq([apt_1, apt_2, apt_3, apt_4])

 end
end




#bldg = Building.new("623", "Savills Apartment Building")
# => #<Buliding:0x000... @building_number="623", @building_name="Savills Apartment Building">


  #   apt_1 = Apartment.new
  #   apt_2 = Apartment.new
  #   apt_5 = Apartment.new
  #
  #   bldg.add_apartment(apt_1)
  #   bldg.add_apartment(apt_2)
  #   bldg.add_apartment(apt_5)
  #
  #   bldg.list_apartments
  #   # => [apt_1, apt_2, apt_5]
  # ```
