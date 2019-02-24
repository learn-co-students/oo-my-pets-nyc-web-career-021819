require 'pry'
require_relative 'fish.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner

attr_reader :species
attr_accessor :name, :pets

@@all = []

  def initialize(species)
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    if @@all != []
    @@all = []
  end
  end

  def say_species
   "I am a #{self.species}."
  end


  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end


  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
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
   self.pets.each do |species, arr|
     arr.each do |pet|
       pet.mood = "nervous"
     end
        arr.clear
    end
   end


  def list_pets
  "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
  #      can list off its pets (FAILED -


end
