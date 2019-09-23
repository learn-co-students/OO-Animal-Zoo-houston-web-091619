require_relative 'lib/zoo.rb'
require_relative 'lib/animal.rb'
require 'pry'



zoo1 = Zoo.new("Bronx Zoo", "BX")
zoo2 = Zoo.new("Dartmoor Zoo", "SF")
zoo3 = Zoo.new("Prospect Park Zoo", "Brooklyn")




 animal1 = Animal.new("Bull", 400, "Tigger", zoo1)
animal2 = Animal.new("Gorilla", 450, "Mufasa", zoo2)
animal3 = Animal.new("Orangutan", 300, "Yeet", zoo3)

puts Zoo.animal_species


binding.pry








 puts "done"	
