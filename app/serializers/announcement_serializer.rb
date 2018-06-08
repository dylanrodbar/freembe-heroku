class AnnouncementSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :photo, :user_id, :latitude, :longitude, :subcategory_id, :place

  has_many :favorites
  class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :user
  end

  has_many :comments
  class CommentSerializer < ActiveModel::Serializer
    attributes :id, :user, :description
  end

end
