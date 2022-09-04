require 'rspec'
require './lib/room.rb'
require './lib/apartment.rb'
require './lib/building.rb'
require './lib/street.rb'

RSpec.describe Street do
 it 'has a street name' do
   adlington = Street.new("Adlington Road")

   expect(adlington).to be_a(Street)
 end

 it 'can read street_name' do
   adlington = Street.new("Adlington Road")

   expect(adlington.street_name).to eq('Adlington Road')
 end

  it 'can have buildings'
  adlington = Street.new("Adlington Road")
  building = Building.new("623", "Savills Apartment Building")
  adlington.add_building(building)

  expect(adlington.buildings).to eq(building)
  end










# 1. A `Street` should be able to add your owned  `Buildings` on this street, and should be able to read that data.
#
#   ```
#   adlington.add_building(bldg)
#
#   ```
#
# 1. A `Street` should be able to list, alphabetically by name, the buildings you own on this street.
# Example:
#   ```
#   zebra = Building.new("123", "Zebra Apartments")
#   # => #<Building:0x000... building_number="123", @building_name="Zebra Apartments">
#
#   adlington.add_building(zebra)
#
#   adlington.buildings
#   # => ["Savills Apartment Building", "Zebra Apartments"]
#   ```
#
# 1. A `Street` must be able to state the number of `Apartments` that are not currently `rented`.
# Example:
#   ```
#   adlington.number_of_available_apartments
#   # => 3
#   ```
#
#   #### Note!
#   For this method, think about the following:
#   - What object already has access to an `Apartment`?
#     Is that object available in `Street`?
#   - What is the _shortest, most efficient_ way to get the data you need?
#   - Pseudocode out your approach in your `spec` file first, in comments, before writing any tests or code. Revisit your pseudocode when you get stuck.
#
#
# 5.  The `Street` should also be able to list the names of the `Buildings` that have available (non-rented) `Apartments`, and the names of the `Rooms` in each available `Apartment`.
# Example:
# ```
# adlington.list_available_apartments
# # =>
# {
#   "Zebra Apartments" => ["bedroom", "laundry"]
#   "Savills Apartment Building" => ["bathroom", "bedroom", "kitchen", "laundry"]
#   "Savills Apartment Building" => ["bathroom", "bedroom", "laundry"]
# }
# ```
