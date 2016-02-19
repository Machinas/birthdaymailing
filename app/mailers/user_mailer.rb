class UserMailer < ApplicationMailer
	def bdat_mail(name,email)
    mail(:to => email, :from => "life@machinas.com", :subject => "Happy Birthday #{name.capitalize}!!!")
	end
	def next_mail(name,date)
	@users_nob = User.all
	@todaysdate = Date.today.strftime("%m%d").to_s
    mail(:to => "eduard@machinas.com", :from => "life@machinas.com", :subject => "No birthday today... Following Birthdays:")
	end
end
