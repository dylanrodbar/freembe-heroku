class SubcategoryXCategory < ApplicationRecord
  belongs_to :category, foreign_key: :category_id
  belongs_to :subcategory, foreign_key: :subcategory_id
  has_many :announcements
end
