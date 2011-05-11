class NotificationToEmployer < ActionMailer::Base
  default_url_options[:host] = "blendit.com.my"

  def send_designer_notification(designer)
    setup_email(designer,"A new profile has been added for designer.")
  end

  protected
  def setup_email(user,subject)
    @recipients = "prashant@itxsolutionsindia.com"
    @from = ENV["mail_username"]
    @sent_on = Time.now
    @subject = subject
    @user = user
    @to = "prashant@itxsolutionsindia.com"
  end

end
