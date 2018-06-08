class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo
  has_many :subcategory_x_category, key: "Subcategories"

  class SubcategoryXCategorySerializer < ActiveModel::Serializer
    attributes :subcategory
    #belongs_to :subcategory
    #class SubcategorySerializer < ActiveModel::Serializer
    #  attributes :id, :name, :description, :photo
    #end
  end
end
