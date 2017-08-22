class Admin::PreferencesController < ApplicationController

  def index

  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_songs, :allow_create_artists )
  end

end
