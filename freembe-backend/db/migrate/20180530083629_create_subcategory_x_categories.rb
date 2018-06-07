class CreateSubcategoryXCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategory_x_categories do |t|
      t.integer :subcategory_id
      t.integer :category_id

      t.timestamps
    end
  end
end
