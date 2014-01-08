class Category < ActiveRecord::Base

  has_many :posts, through: :posts_categories

  has_many :posts_categories, dependent: :destroy
end
