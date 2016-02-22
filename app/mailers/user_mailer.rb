class UserMailer < ApplicationMailer



	def bdat_mail(name,email)
    mail(:to => email, :from => "life@machinas.com", :subject => "Happy Birthday #{name.split.map { |x| x.capitalize }.join(" ")}!!!")
	end
	def next_mail(name,date)
	@users_nob = User.order('users.birthday ASC').all
	@todaysdate = Date.today.strftime("%m%d").to_s
    mail(:to => "eduard@machinas.com, achim@machinas.com, leonard@machinas.com, roman@machinas.com", :from => "life@machinas.com", :subject => "No birthday today... Following Birthdays:")
	end
end

#, achim@machinas.com, leonard@machinas.com, roman@machinas.com