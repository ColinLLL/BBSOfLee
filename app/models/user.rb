class User < ActiveRecord::Base
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, format: { 
    with: /(\w*)@(\w*).com/,
    message: 'must be a Email format'}
end
