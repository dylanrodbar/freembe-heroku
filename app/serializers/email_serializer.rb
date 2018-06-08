class EmailSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :email
end
