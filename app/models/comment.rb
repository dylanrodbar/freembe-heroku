class Comment < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :announcement, foreign_key: :announcement_id
end
