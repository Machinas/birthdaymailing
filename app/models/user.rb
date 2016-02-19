class User < ActiveRecord::Base
	validates :name, :presence=>true
	validates :email, :presence=>true

	def self.bday_update
	@todaysdate = Date.today.strftime("%m%d").to_s
	@users = User.all
	@allusersmails = []	
    @allusersdates = []	
    @allusersnames = []	
	@users.each do |x|
		   	@allusersmails << x.email
		   	@allusersnames << x.name
		   	@allusersdates << x.birthday.strftime("%m%d").to_s
    end
	@users.each do |u|
	   		@sendmail = false

		   if @todaysdate == u.birthday.strftime("%m%d").to_s
		   	@birthday_person = u.name
		   	
		   	@sendmail = true
		   end	

		   if @sendmail == true
		 		unless u.accepts_email == false 
		 			
			       	UserMailer.bdat_mail(@birthday_person,@allusersmails.join(",").to_s).deliver
			      
			    end
		   end	

	  
    end
    @nobirthday = true
    @users.each do |z|
    	if @todaysdate == z.birthday.strftime("%m%d").to_s
		   	@nobirthday = false
		end	
    end	

    if @nobirthday == true
	    @allusersdates = @allusersdates.sort
       	UserMailer.next_mail(@allusersnames.join(",").to_s,@allusersdates.join(",").to_s).deliver
      
	end	


  end
end
