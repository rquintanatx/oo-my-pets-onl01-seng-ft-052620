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
    binding.pry
    new_cat =   
    new_cat.owner = self
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