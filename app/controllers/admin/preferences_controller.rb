class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true)
  end

  def edit

  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(params.require(:preference).permit(:allow_create_songs, :allow_create_artists))
    redirect_to artist_preferences_path
  end

  def show

  end
end
