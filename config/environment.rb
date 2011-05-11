# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
BlendItRecruitmentPortal::Application.initialize!

ActionMailer::Base.smtp_settings = {
        :enable_starttls_auto => true,
        :address => "smtp.gmail.com",
        :port => "587",
        :user_name => "notifications@blendit.com.my",
        :password => "password@123",
        :authentication => :plain,
        :smtp => true
  }
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default_content_type = "text/html"
ActionMailer::Base.raise_delivery_errors = true

ENV["mail_username"] = "notifications@blendit.com.my"