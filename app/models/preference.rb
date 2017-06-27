class Preference < ActiveRecord::Base
  default_scope { limit(1) }

  def self.artist_sort_order
    pluck(:artist_sort_order).first || :asc
  end

  def self.song_sort_order
    pluck(:song_sort_order).first || :asc
  end

  def self.allow_create_artists?
    !!pluck(:allow_create_artists).first
  end

  def self.allow_create_songs?
    !!pluck(:allow_create_songs).first
  end
end
