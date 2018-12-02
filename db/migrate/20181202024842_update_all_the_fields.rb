class UpdateAllTheFields < ActiveRecord::Migration
  def change
  	rename_column :preferences, :song_sort, :song_sort_order
  end
end
