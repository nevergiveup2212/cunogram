class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@example.com'
  layout 'mailer'

  def welcom_email(user)
  	@user = user
  	url = 'http://example.com/login'
  	mail(to: @user.email, subject: 'Welcome to My Awesome site')
  end
end
