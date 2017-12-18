class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.new
    @artist = Artist.new
    @song = @artist.songs.new
  end

  def create

  end
end