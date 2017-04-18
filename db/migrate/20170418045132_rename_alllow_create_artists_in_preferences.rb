class RenameAlllowCreateArtistsInPreferences < ActiveRecord::Migration
  def change
    rename_column :preferences, :alllow_create_artists, :allow_create_artists
  end
end
