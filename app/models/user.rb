class User < ActiveRecord::Base
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, format: { 
    with: /(\w*)@(\w*).com/,
    message: 'must be a Email format'}
  def authenticate(login, pass)
    user = User.where(:email => login, :password => pass).first
    return user
  end
end
