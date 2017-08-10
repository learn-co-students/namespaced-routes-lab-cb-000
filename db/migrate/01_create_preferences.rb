class CreatePreferences < ActiveRecord::Migration

  def up
    create_table :preferences do |s|
      s.string :artist_sort_order
      s.string :song_sort_order
      s.boolean :allow_create_artists
      s.boolean :allow_create_songs
    end
  end
end
