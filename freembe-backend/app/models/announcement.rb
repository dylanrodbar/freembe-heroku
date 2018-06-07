class Announcement < ApplicationRecord
  belongs_to :subcategory, foreign_key: :subcategory_id
  belongs_to :user, foreign_key: :user_id
  has_many :favorites
  has_many :comments

end
