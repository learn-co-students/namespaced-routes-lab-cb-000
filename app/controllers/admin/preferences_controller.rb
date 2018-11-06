class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preferene.all.last
  end

end
