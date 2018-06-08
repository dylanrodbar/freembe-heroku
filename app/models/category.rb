class Category < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  has_many :subcategory_x_category
end
