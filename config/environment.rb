# Load the Rails application.
require File.expand_path('../application', __FILE__)
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => 587,
    :user_name => "life@machinas.com",
    :password => "4-low-doors",
    :authentication => :plain,
    :enable_starttls_auto => true,
    :openssl_verify_mode => 'none' 
}
# Initialize the Rails application.
Rails.application.initialize!
