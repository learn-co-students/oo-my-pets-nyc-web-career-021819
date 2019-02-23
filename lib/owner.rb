require "pry"

class Owner

  @@all = []

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(pets)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
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
    self.pets.each do |pets, pet|
      pet.map do |pet|
        pet.mood= "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    num_pets_arr = []
    self.pets.each do |pets, pet|
      num_pets_arr << pet.length
    end
    "I have #{num_pets_arr[0]} fish, #{num_pets_arr[2]} dog(s), and #{num_pets_arr[1]} cat(s)."
  end

end
