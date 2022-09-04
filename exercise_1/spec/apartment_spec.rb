require 'rspec'
require './lib/room.rb'
require './lib/apartment.rb'


RSpec.describe Apartment do

  it'exists' do
    apartment = Apartment.new

    expect(apartment).to be_a(Apartment)
  end

  it'it starts vacant?' do
     apartment = Apartment.new

    expect(apartment.rented?).to eq(false)
  end

  it'can be rented' do
    apartment = Apartment.new

    apartment.rent

    expect(apartment.rented?).to eq(true)
  end

  it'can have up to 4 rooms' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new("laundry")
    kitchen = Room.new("kitchen")
    bedroom = Room.new("bedroom")

    apartment.rooms

    apartment.add_room("bathroom")
    apartment.add_room("laundry")
    apartment.add_room("kitchen")
    apartment.add_room("bedroom")


  end

  it 'can list rooms alphabetically' do
    apartment = Apartment.new
    apartment.add_room(Room.new("bathroom"))
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.list_rooms_by_name_alphabetically).to eq (["bathroom", "bedroom", "kitchen", "laundry"])
  end
end




# 1. An `Apartment` can have up to 4 `Room`s, and can list those `Room`s by name, alphabetically.
#   ```
#   apartment = Apartment.new
#   # => #<Apartment:0x000... @rented=false>
#
#   bathroom = Room.new("bathroom")
#
#   apartment.add_room(bathroom)
#   apartment.add_room(Room.new("laundry"))
#   apartment.add_room(Room.new("kitchen"))
#   apartment.add_room(Room.new("bedroom"))
#
#   apartment.rooms
#   # => [#<Room:0x0.. @name="bathroom">, #<Room:0x0.. @name="laundry">, #<Room:0x0.. @name="kitchen">, #<Room:0x0.. @name="bedroom">]
#
#   apartment.list_rooms_by_name_alphabetically
#   # => ["bathroom", "bedroom", "kitchen", "laundry"]
#   ```
