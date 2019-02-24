class Dog
  attr_reader :name
  attr_accessor :mood
@@all = []
    def initialize(name)
      @name = name
      @mood = "nervous"
      @@all << self
    end

    def self.all
      @@all
    end
  # can initialize a dog (FAILED - 6)
  # initializes with a name (FAILED - 7)
  # can't change its name (FAILED - 8)
  # initializes with a nervous mood (FAILED - 9)
  # can change its mood (FAILED - 10)
end
