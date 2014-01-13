class AddGoodToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :good, :integer, :default => 0
    add_column :posts, :bad, :integer, :default => 0
  end
end
