class AddCataToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cata, :string
  end
end
