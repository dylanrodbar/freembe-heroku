class AnnouncementSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :photo, :user, :latitude, :longitude, :subcategory, :place

  has_many :favorites
  class FavoriteSerializer < ActiveModel::Serializer
    attributes :user
    #attributes :id, :user
  end

  has_many :comments
  class CommentSerializer < ActiveModel::Serializer
    attributes :user
    #attributes :id, :user, :description
  end

end
