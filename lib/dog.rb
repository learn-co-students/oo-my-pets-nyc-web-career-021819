# Dog
#   can initialize a dog (FAILED - 6)
#   initializes with a name (FAILED - 7)
#   can't change its name (FAILED - 8)
#   initializes with a nervous mood (FAILED - 9)
#   can change its mood (FAILED - 10)


class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end