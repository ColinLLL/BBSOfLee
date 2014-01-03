class CreateCates < ActiveRecord::Migration
  def change
    create_table :cates do |t|
      t.string :cate_name
      t.integer :post_id

      t.timestamps
    end
  end
end
