class GenericPokeSearcher::POKE

    attr_accessor :name, :url, :weights, :height, :abilities, :game_indices, :types, :moves

    @@all = []



    #Initializing all POKEmon with a name, weight, height, abilities, types, held items and game index.


    def initialize(name,url)
        @name = name
        @url = url
        @weight = weight
        @height = height
        @abilities = []
        @game_indices = []
        @moves = []
        @types = []
        @@all << self
    end

    def get_type
        types.each {|type| puts type}
    end

    def get_game_indices
        game_indices.each {|game| puts game}
    end

    def get_moves
        moves.each {|move| puts move} 
    end

    def get_abilities
        abilities.each {|abilities| puts abilities}
    end

    def self.all
        @@all
    end

end