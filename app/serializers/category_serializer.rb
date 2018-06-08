class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo
  has_many :subcategory_x_category, key: "subcategories"

  class SubcategoryXCategorySerializer < ActiveModel::Serializer
    attributes :subcategory_id
    #belongs_to :subcategory
    #class SubcategorySerializer < ActiveModel::Serializer
    #  attributes :id, :name, :description, :photo
    #end
  end
end
