require 'pry'
class Zoo	
  @@all = []
  attr_reader :location, :name

   def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

   def self.all
    @@all
    # Inside a class method, self is the class (Zoo)
  end

   def animals
    # Inside an instance method, self is the instance who is calling that method (ie: zoo1)
    Animal.all.select do |animal|
      self == animal.zoo
    end
  end

   def animal_species
    animal_array = self.animals.map {|animal| animal.species}
    animal_array.uniq
  end

end
