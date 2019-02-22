# Owner
#   Class methods
#     ::all returns all instances of Owner that have been created (FAILED - 16)
#     ::count returns the number of owners that have been created (FAILED - 17)
#     ::reset_all can reset the owners that have been created (FAILED - 18)
#   Instance methods
#     #species
#       initializes with a species (FAILED - 19)
#       can't change its species (FAILED - 20)
#     #say_species
#       can say its species (FAILED - 21)
#     #name
#       can have a name (FAILED - 22)
#     #pets
#       is initialized with a pets attribute as a hash with 3 keys (FAILED - 23)
#     #buy_fish
#       can buy a fish that is an instance of the Fish class (FAILED - 24)
#       knows about its fishes (FAILED - 25)
#     #buy_cat
#       can buy a cat that is an instance of the Cat class (FAILED - 26)
#       knows about its cats (FAILED - 27)
#     #buy_dog
#       can buy a dog that is an instance of the Dog class (FAILED - 28)
#       knows about its dogs (FAILED - 29)
#     #walk_dogs
#       walks the dogs which makes the dogs' moods happy (FAILED - 30)
#     #play_with_cats
#       plays with the cats which makes the cats moods happy (FAILED - 31)
#     #feed_fish
#       feeds the fishes which makes the fishes' moods happy (FAILED - 32)
#     #sell_pets
#       can sell all its pets, which make them nervous (FAILED - 33)
#     #list_pets
#       can list off its pets (FAILED - 34)

class Owner
  #Class Methods
  attr_accessor :name, :pets
  @@all = []

  def initialize(species="default")
    @species = species
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    Owner.all << self

  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.length
  end

  def self.reset_all
    Owner.all.clear
  end

  #Instance Methods
  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets

    self.pets.map do |pet_type, pets|
      pets.map do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end

  end

  #"I have 2 fish, 3 dog(s), and 1 cat(s)."
  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end