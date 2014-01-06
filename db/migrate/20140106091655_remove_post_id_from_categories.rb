class RemovePostIdFromCategories < ActiveRecord::Migration
  def change
  	remove_column :categories, :post_id, :integer
  end
end
