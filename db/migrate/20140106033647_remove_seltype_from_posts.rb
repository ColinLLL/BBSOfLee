class RemoveSeltypeFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :seltype, :string
  end
end
