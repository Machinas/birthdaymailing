class User < ActiveRecord::Base
	validates :name, :presence=>true
	validates :email, :presence=>true

	def self.bday_update
	    @users = User.all
	    @users.each do |u|
	       unless u.accepts_email == false 
	       	UserMailer.bdat_mail(u.name,u.email).deliver
	       end
    end
  end
end
