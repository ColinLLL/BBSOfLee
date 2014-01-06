class AlertTablePostCategories < ActiveRecord::Migration
  def change
  	add_index :post_categories, :post_id
  end
end
