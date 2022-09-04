class Building

  attr_reader :building_number, :building_name, :list_apartments

  def initialize(building_number, building_name)
   @building_number = building_number
   @building_name = building_name
   @list_apartments = []
  end

  def add_apartment(apartment)
   if @list_apartments.length < 4
    @list_apartments << apartment
    end
  end
end
