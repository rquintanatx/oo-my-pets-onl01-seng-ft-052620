require 'pry'

class Owner
  attr_accessor
  @@all = []
  
  def name 
    @name 
  end 

  def species
    @species
  end
  
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
  end 
  
  def say_species
    "I am a #{self.species}."
  end   
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.collect {|dog| dog.mood = "happy"}
  end
    
  def feed_cats
    Cat.all.collect {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    Cat.all.collect {|cat| cat.mood = "nervous"}
    Dog.all.collect {|dog| dog.mood = "nervous"}
    Dog.all.collect {|dog| dog.owner = nil}
    Cat.all.collect {|cat| cat.owner = nil}
  end 
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
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
end