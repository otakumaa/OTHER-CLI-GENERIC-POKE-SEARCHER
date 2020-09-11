require "GenericPokeSearcher/version"

require_relative 'cli'
require_relative 'Poke'
require_relative 'api'

require 'colorize'
require 'httparty'
require 'pry'
require 'nokogiri'
require 'bundler'

module GenericPokeSearcher
  class Error < StandardError; end
  # Your code goes here...
end
 