class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists, default: true
      t.string :artist_sort_order, default: "DESC"
      t.boolean :allow_create_songs, default: true
      t.string :song_sort_order, default: "DESC"

      t.timestamps null: false
    end
  end
end
