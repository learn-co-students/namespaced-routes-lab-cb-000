class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.boolean :can_create_songs?
      t.boolean :can_create_artists?
    end
  end
end
