class RenameUserToUserId2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :emails, :user, :user_id
  end
end
