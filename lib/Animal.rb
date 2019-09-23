class Animal

    @@all = []

    attr_reader :species, :nickname
    attr_accessor :weight

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        zoo.animals << self
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal if animal.species == species
        end
    end

    def zoo
        Zoo.all.find do |i|
            i.animals.include?(self)
        end
    end


end
