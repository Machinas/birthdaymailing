class UserMailer < ApplicationMailer
	def bdat_mail(email)
    mail(:to => email, :from => "life@machinas.com", :subject => "Bday email from birthdayapp")
	end
end
