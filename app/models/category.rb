class Category < ActiveRecord::Base
  has_many :post_categories, dependent: :destroy
end
