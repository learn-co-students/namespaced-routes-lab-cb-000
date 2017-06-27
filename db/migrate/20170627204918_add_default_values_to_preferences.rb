class AddDefaultValuesToPreferences < ActiveRecord::Migration
  def change
    change_column_default :preferences, :artist_sort_order, 'asc'
    change_column_default :preferences, :song_sort_order, 'asc'
    change_column_default :preferences, :allow_create_artists, false
    change_column_default :preferences, :allow_create_songs, false
  end
end
