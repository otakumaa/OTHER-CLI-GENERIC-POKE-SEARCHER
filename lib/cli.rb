class GenericPokeSearcher::CLI

     attr_reader :api

     def call 
        @api = GenericPokeSearcher::API.new
        @api.fetch
        greeting
        show_pokemon
        poke_search
        another_poke
     end

     def greeting
        puts "        ------------------------------------------------".colorize(:red)
        puts "       |                                                |".colorize(:red)
        puts "       | Welcome to my Generic Poke(mon) search engine. |".colorize(:red)
        puts "       |                                                |".colorize(:red)
        puts "       |                                                |".colorize(:red)
        puts "       |                                                |".colorize(:red)
        puts "        ------------------------------------------------".colorize(:red)
        sleep(1)

     end

     def show_pokemon
        @pokemon = GenericPokeSearcher::POKE.all.each.with_index(1) do |pokemon, index|
            puts "#{index} : #{pokemon.name}"
        end
    end


    def get_details(input)
        pk @pk = @pokemon.find do |poke|
            poke.name == input
        end
        @api.details(@pk)
    end


    def poke_search
        puts "Enter the name of the Pokemon you would like information about."
        input = gets.chomp
        if valid?(input)
            puts "Here is the data on #{input.upcase} you requested."
            get_details(input)
            display_pokemon(@pk)
        else
            input != @pk
            puts "Enter END to exit"
            sleep(1)
        end
    end


    def valid?(input)
        if !@pokemon.find { |poke| poke.name == input}
            puts "Please enter a valid Pokémon"
        elsif input == "end"
            exit_text
            sleep(2)
        else
            true

        end
    end


    def display_pokemon(pke)
        sleep(1)
        puts "Pokémon: #{pke.name}"
        puts "Height: #{pke.height}"
        puts "Weight: #{pke.weight}"
        display_data(pke)
    end



    def display_data(poke)
        puts "looking for other info on #{poke.name}?"
        puts "Please enter Types, Moves, Abilities, or Version for more info"
        puts "If you'd like to exit enter exit"
        input = gets.chomp.downcase
        case input 
        when "types" 
            poke.get_type
            display_data(poke)

        when "abilities"
            poke.get_abilities
            display_data(poke)

        when "moves"
            poke.get_moves
            display_data(poke)
        when "version"
            poke.get_game_indices
            display_data(poke)

        when "exit"
            exit_text

        else
            puts "Invalid input please try again."
            display_data(poke)
        end
    end


    def another_poke
        puts "Is there another pokemon you would like information on?"
        input = gets.chomp
        if input == "yes"
            show_pokemon
            poke_search
        else
            exit_text
        end
    end

    def exit_text
        puts "Thank You and good luck on your journey!"
    end

    
end

