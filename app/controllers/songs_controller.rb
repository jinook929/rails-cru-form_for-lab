class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @artists = Artist.all
    @genres = Genre.all
  end

  def create
    artist_name = params[:song][:artist_name]
    if not artist_name.empty?
      artist = Artist.find_or_create_by(name: artist_name)
      params[:song][:artist_id] = artist.id
    end

    genre_name = params[:song][:genre_name]
    if not genre_name.empty?
      genre = Genre.find_or_create_by(name: genre_name)
      params[:song][:genre_id] = genre.id
    end

    @song = Song.create(strong_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
    @genres = Genre.all
  end

  def update
    artist_name = params[:song][:artist_name]
    if not artist_name.empty?
      artist = Artist.find_or_create_by(name: artist_name)
      params[:song][:artist_id] = artist.id
    end

    genre_name = params[:song][:genre_name]
    if not genre_name.empty?
      genre = Genre.find_or_create_by(name: genre_name)
      params[:song][:genre_id] = genre.id
    end

    @song = Song.find(params[:id])
    @song.update(strong_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  private
    def strong_params(*args)
      params.require(:song).permit(*args)
    end
end
