
require 'pry'
class Artist
  attr_accessor :name, :song

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end


  def add_song_by_name(songname)
    song = Song.new(songname)
    add_song(song)
  end

  def self.song_count
    Song.all.count
   end
  
 


end