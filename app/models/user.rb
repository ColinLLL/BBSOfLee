class User < ActiveRecord::Base

  validates :password, presence: true, length: { minimum: 6 }, :confirmation => true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'must be a Email format'}, uniqueness: true

  has_secure_password

  has_many :posts, dependent: :destroy
end
