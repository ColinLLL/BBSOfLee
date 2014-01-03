class Post < ActiveRecord::Base
  belongs_to :users
  belongs_to :cates
end
