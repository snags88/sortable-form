class Photo < ActiveRecord::Base
  belongs_to :album
  before_create :generate_token, :generate_order

  private
    def generate_token
      self.token = loop do
        random_token = SecureRandom.urlsafe_base64(nil, false)
        break random_token unless self.class.exists?(token: random_token)
      end
    end

    def generate_order
      self.order = Photo.maximum(:order) ? Photo.maximum(:order) + 1 : 1
    end
end
