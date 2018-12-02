class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
    	t.boolean :allow_create_songs
    	t.boolean :allow_create_artists

    	t.string :song_sort
    	t.string :artist_sort
    end
  end
end
