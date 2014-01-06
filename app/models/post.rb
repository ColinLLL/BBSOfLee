class Post < ActiveRecord::Base
  belongs_to :users
  
  has_many :post_categories, dependent: :destroy
end
