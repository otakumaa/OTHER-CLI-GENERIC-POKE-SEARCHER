require "GenericPokeSearcher/version"

require_relative 'cli'
require_relative 'Poke'
require_relative 'api'


require "httparty"
require "pry"
require "nokogiri"

module GenericPokeSearcher
  class Error < StandardError; end
  # Your code goes here...
end
 