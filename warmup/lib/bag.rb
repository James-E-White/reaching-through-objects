class Bag
 attr_reader :candies

  def initialize
    @candies = []
    # @count = 0
  end

  def empty?
   if @candies.count >= 1
     false
   else
     true
   end
  end

  def count
   @candies.length
  end

  def add_candy(candy)
    @candies.push(candy)
    #@candies << candy
    # @count += 1
  end

  def contains?(type)
   @candies.any? do |candy|
    if candy.type == type
   end
  end
 end
end
