class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :photo, :role

  has_many :emails
  class EmailSerializer < ActiveModel::Serializer
    attributes :id, :email
  end

  has_many :telephones
  class TelephoneSerializer < ActiveModel::Serializer
    attributes :id, :telephone
  end

  has_many :announcements
  class AnnouncementSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :price, :photo, :latitude, :longitude, :subcategory, :place
  end

  has_many :favorites
  class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :announcement
  end


end
