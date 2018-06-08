class Changetypename < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :type, :type_of_user
  end
end
