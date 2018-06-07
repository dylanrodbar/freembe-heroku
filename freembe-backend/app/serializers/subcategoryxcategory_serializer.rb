class SubcategoryXCategorySerializer < ActiveModel::Serializer
  attributes :id, :subcategory_id
  belongs_to :subcategory

  class SubcategorySerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :photo
  end

end
