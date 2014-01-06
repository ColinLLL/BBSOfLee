class RemoveUserIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :user_id, :integer
    remove_column :posts, :category, :string
  end
end
