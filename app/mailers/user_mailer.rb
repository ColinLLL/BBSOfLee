class UserMailer < ActionMailer::Base
  default from: "lilonglongfwzzz@163.com"
  
  def registration_confirmation(user)
  	@user = user
  	mail(to: @user.email, subject: "Thank you for Registstering")
  end
  
end
