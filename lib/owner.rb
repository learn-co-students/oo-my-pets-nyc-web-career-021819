require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all =[]

  def initialize(species)
    @@all << self
    @species= species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fishy = Fish.new (fish)
    @pets[:fishes]<< fishy
  end

  def buy_cat(cat)
    kat = Cat.new (cat)
    @pets[:cats]<< kat
  end

  def buy_dog(dog)
    doggy = Dog.new (dog)
    @pets[:dogs]<< doggy
  end

  def walk_dogs
    @pets[:dogs].select do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].select do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].select do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.values.select do |pet|
      pet.select do |animal|
      animal.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
