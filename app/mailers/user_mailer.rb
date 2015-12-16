class UserMailer < ApplicationMailer
	def bdat_mail(name,email)
    mail(:to => email, :from => "life@machinas.com", :subject => "Happy Birthday #{name.capitalize}!!!")
	end
end
