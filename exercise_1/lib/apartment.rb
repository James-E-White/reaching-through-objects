class Apartment
   attr_reader :rooms
   def initialize
     @rooms = []
     @rented = false
     @room_count = 0
   end

   def rented?
     @rented
   end

   def rent
    @rented = true
   end

   def add_room(room)
     @room_count += 1
     @rooms << room
   end

   def list_rooms_by_name_alphabetically
     room_list = @rooms.map do |room|
       room.name
    end
    room_list.sort
  end
end
