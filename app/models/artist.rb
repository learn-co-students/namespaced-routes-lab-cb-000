class Artist < ActiveRecord::Base
  has_many :songs

  default_scope { order(name: Preference.artist_sort_order) }
end
