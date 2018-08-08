class Preference < ActiveRecord::base
  attr_reader :allow_create_artists, :artist_sort_order, :allow_create_songs, :song_sort_order

  def allow_create_artists(bool = true)

  end

  def artist_sort_order(order = "DESC")

  end


  def allow_create_songs(bool = true)

  end

  def song_sort_order(order = "DESC")

  end
end
