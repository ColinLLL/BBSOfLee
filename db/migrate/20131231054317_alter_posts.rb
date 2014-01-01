class AlterPosts < ActiveRecord::Migration
  def change
  	rename_column("posts","type","seltype")
  end
end
