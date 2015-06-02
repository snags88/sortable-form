class AlbumsController < ApplicationController

  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @album.save ? (redirect_to @album) : (render 'new')
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy
    @album.destroy
    redirect_to albums_path
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:title)
    end

end
