class Album < ActiveRecord::Base
  has_many :photos

  def update_order(tokens)
    tokens.split(',').each.with_index(1) do |token, index|
      photo = self.photos.find_by(token: token)
      photo.order = index
      photo.save
    end
  end
end
