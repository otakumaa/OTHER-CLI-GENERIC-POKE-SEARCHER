class GenericPokeSearcher
    attr_reader :details



    def fetch
        url = "https://pokeapi.co/api/v2/pokemon?limit=700"
        response = HTTParty.get(url)
        response["results"].each do |poke|
        name = poke["name"]
        url = poke["url"]
        GenericPokeSearcher::POKE.new(name,url)
        end
        binding.pry
    end