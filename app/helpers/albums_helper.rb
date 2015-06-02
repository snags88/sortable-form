module AlbumsHelper
  def ordered_album_photos
    @album.photos.order(:order)
  end
end
