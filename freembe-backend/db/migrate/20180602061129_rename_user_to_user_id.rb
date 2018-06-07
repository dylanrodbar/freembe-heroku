class RenameUserToUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column :telephones, :user, :user_id
  end
end
