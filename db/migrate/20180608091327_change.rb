class Change < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :type_of_user, :role
  end
end
