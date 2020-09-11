class GenericPokeSearcher
    attr_reader :details



    def fetch
        url = "https://pokeapi.co/api/v2/pokemon?limit=2810"
        response = HTTParty.get(url)
        response["results"].each do |poke|
        name = poke["name"]
        url = poke["url"]
        GenericPokeSearcher::POKE.new(name,url)
        end
       # binding.pry
    end


    def details(poke)
        url = poke.url
        response = HTTParty.get(url)
        
        response["abilities"].each {|pa| poke.abilities} << pa["ability"]["name"]}

        response["types"].each {|pt| poke.types} << pt["type"]["name"]}

        response["game_indices"].each {|pg| poke.game_indices} << pg ["version"]}

        response["moves"].each {|pm| poke.moves} << pm ["move"]["name"]}

        poke.weight = response["weight"]

        poke.height = response["height"]

       # binding.pry


    end