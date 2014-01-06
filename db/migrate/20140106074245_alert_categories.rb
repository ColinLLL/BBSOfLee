class AlertCategories < ActiveRecord::Migration
  def change
  	add_column :categories, :category_title, :string
    add_index :categories, :post_id
  end
end
