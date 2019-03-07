class Preference < ActiveRecord::Base

  def self.create_songs?
    Preference.first.allow_create_songs
  end

  def self.create_artists?
    Preference.first.allow_create_artists
  end

  def self.artist_order?
    Preference.first.artist_sort_order
  end

  def self.song_order?
    Preference.first.song_sort_order
  end

end
