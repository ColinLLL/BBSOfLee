class UserMailer < ActionMailer::Base
  default from: "lilonglongfwz@163.com"
  def registration_confirmation(user)
  	#recipients = user.email
  	@user = user
  	#@url = 'http://www.126.com'
  	mail(to: @user.email, subject: "Thank you for Registstering")
  	#from:       "lilonglongfwz@163.com"
  	#subject    = "Thank you for Registstering"
  	#body       = {:user => user}
  	#to:         "lilonglongfwz@163.com"
  	#from:       "lilonglongfwz@163.com"
  	#reply_to:   "lilonglongfwz@163.com"
  end
end
