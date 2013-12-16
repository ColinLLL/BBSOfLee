class Signin < ActiveRecord::Base
	#belongs_to :user
	
	validates :email, presence: true
	validates :password, presence: true
end
