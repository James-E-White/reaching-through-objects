require 'rspec'
require './lib/room.rb'

RSpec.describe Room do
  it 'has a room' do
    bathroom = Room.new('bathroom')
    # expect(bathroom).to be_an_instance_of Room
    expect(bathroom.name).to eq "bathroom"

   end
end
