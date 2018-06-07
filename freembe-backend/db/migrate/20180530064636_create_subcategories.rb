class CreateSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
