class PhotosController < ApplicationController

  def new
    @album = Album.find(params[:album_id])
    @photo = Photo.new
  end

  def create
    @album = Album.find(params[:album_id])
    @photo = Photo.new(photo_params)
    @photo.album = @album
    @photo.save ? (redirect_to @album) : (render 'new')
  end

  private
    def photo_params
      params.require(:photo).permit(:description)
    end
end
