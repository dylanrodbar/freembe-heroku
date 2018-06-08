class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :announcement_id
      t.string :description

      t.timestamps
    end
  end
end
