class Admin::PreferencesController < ApplicationController
  def index
    if Preference.all.length < 1
      @preference = Preference.create(artist_sort_order: "ASC", song_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true )
    else
      @prefernce = Preference.all[0]
    end
  end

end
