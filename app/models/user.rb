class User < ActiveRecord::Base
	validates :name, :presence=>true
	validates :email, :presence=>true

	def self.bday_update
	    @users = User.all
	    @users.each do |u|
      UserMailer.bdat_mail(u.email).deliver
    end
  end
end
