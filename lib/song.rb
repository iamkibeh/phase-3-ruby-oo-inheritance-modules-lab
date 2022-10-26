require 'pry'
require_relative './concerns/memorable.rb'

class Song
  extend Memorable
  include Paramable
  extend Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
