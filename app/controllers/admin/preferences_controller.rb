class Admin::PreferencesController < ApplicationController

  def index
     @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end

end

#the rspec and the instructions on the README don't match. I have to check the solution as the lab passed so easily.
#This entire Rails unit is a joke.
