class UpdateArtistSort < ActiveRecord::Migration
  def change
  	rename_column :preferences, :artist_sort, :artist_sort_order
  end
end
