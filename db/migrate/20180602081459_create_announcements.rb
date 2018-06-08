class CreateAnnouncements < ActiveRecord::Migration[5.0]
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :photo
      t.integer :author
      t.float :latitude
      t.float :longitude
      t.integer :subcategory_id
      t.string :place

      t.timestamps
    end
  end
end
