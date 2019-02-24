class Owner

  @@all = []

 attr_accessor :pets
 attr_reader :name, :species

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fish] << new_fish
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def species
    @species
  end

  def list_pets
  end

end
