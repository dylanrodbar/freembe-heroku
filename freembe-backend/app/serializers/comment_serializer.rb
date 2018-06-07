class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user, :announcement, :description
end
