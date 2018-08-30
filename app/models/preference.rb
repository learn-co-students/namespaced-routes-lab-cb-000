class Preference < ActiveRecord::Base
  # p = Preference.new(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: false, allow_create_songs: true)



end

# rails g migration add_settings_to_preferences artist_sort_order:string song_sort_order:string allow_create_artists:boolean allow_create_songs:boolean --no-test-framework
