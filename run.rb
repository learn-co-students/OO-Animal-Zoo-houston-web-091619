require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo = Zoo.new('swag zoo', 'h-town')

animal1 = Animal.new('dog', 50, 'fido', zoo)
animal2 = Animal.new('cat', 5, 'puss', zoo)

binding.pry
puts "done"
