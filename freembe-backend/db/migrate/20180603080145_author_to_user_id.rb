class AuthorToUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column :announcements, :author, :user_id
  end
end
