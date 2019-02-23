require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(pets)
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    @species = "human"
    @name = name
    @@all.push(self)
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats].push(new_cat)

  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs].push(new_dog)
  end

  def buy_fish(name)
    # binding.pry
    new_fish = Fish.new(name)
    self.pets[:fishes].push(new_fish)
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |animal, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    dogs = self.pets[:dogs].length
    cats = self.pets[:cats].length
    fishes = self.pets[:fishes].length

    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end