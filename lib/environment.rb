require "pry"
require "json"
require "rest-client"
require "colorize"
require "tty-prompt"






require_relative "./generic_poke_searcher/cli"
require_relative "./find/findable"
require_relative "./generic_poke_searcher/version"
require_relative "./generic_poke_searcher/pokemon"
require_relative "./generic_poke_searcher/move"
require_relative "./generic_poke_searcher/ability"
require_relative "./generic_poke_searcher/item"
require_relative "./generic_poke_searcher/type"
require_relative "./generic_poke_searcher/api"
require_relative "./generic_poke_searcher/pokemon_menu"
require_relative "./generic_poke_searcher/move_menu"
require_relative "./generic_poke_searcher/item_menu"
require_relative "./generic_poke_searcher/ability_menu"
require_relative "./generic_poke_searcher/type_menu"




module GenericPokeSearcher
  class Error < StandardError; end
  # Your code goes here...
end