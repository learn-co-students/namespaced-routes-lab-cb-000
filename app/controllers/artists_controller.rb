class ArtistsController < ApplicationController

  def index
    preference = Preference.last.artist_sort_order
    @artists = Artist.in_order(preference)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new

    if Preference.last.allow_create_artists
      @artist = Artist.new
    else
      redirect_to artists_path
    end

  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

=begin
  def artist_order(setting)
    case setting
    when 'ASC'
      @artists = Artist.all.order(:name)
    when 'DESC'
      @artists = Artist.all.order(name: :desc)
    else
      @artists = Artist.all
    end
  end
=end
end

