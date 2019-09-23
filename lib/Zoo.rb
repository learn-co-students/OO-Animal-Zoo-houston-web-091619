class Zoo

    @@all = []

    attr_accessor :name, :location, :animals

    def initialize(name, location)
        @name = name
        @location = location
        @animals = []

        @@all << self
    end

    def self.all
        @@all
    end

    def animal_species
        @animals.map do |i|
            i.species 
        end.uniq
    end

    def find_by_species(species)
        @animals.select do |i|
            i if i.species == species
        end
    end

    def animal_nicknames
        @animals.map do |i|
            i.nickname 
        end
    end

    def self.find_by_location(location)
        self.all.select do |i|
            i if i.location = location
        end
    end


end
