class AlertPosts < ActiveRecord::Migration
  def change
  	rename_column("posts","cata","category")
  end
end
