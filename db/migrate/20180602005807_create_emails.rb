class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.integer :user
      t.string :email

      t.timestamps
    end
  end
end
