class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @songs = @genre.songs
    @artists = @genre.artists
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(strong_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(strong_params(:name))
    redirect_to genre_path(@genre)
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to genres_path
  end

  private
    def strong_params(*args)
      params.require(:genre).permit(*args)
    end
end
