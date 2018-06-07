class Subcategory < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true

end
