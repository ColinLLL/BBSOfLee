class Post < ActiveRecord::Base
  belongs_to :user

  has_many :categories, through: :posts_categories

  has_many :posts_categories
end
