class WelcomeController < ApplicationController
  def index	
  	  if user_signed_in?
    	  visadata = Visa.where(user_id: current_user)
    	  @uservisa = Visa.where(owner_id: current_user.id)
    	  
    	  passportdata = Passport.where(user_id: current_user)
        @userpassport = Passport.where(owner_id: current_user.id)
        
    		@userreport = Report.where(user_id: current_user)
    		allunpaidvisa = Visa.where(user_id: current_user, status: 'Received')
    		@unpaidvisa = {}
    		if allunpaidvisa.count > 0
          allunpaidvisa.each do |x|
            @unpaidvisa[ "ref_id"=> t.ref_id, "category" => t.category_type ]
          end
        end
    		
    		#if there is at least once visa/passport/report application, 
    		#then visadata == 1 as for the current user
=begin
    		if visadata.count > 0
          @uservisa.each do |x|
            puts x.inspect
          end
        end
  
    		if passportdata.count > 0
          @userpassport.each do |x|
            puts x.inspect
          end
        end
    		
    		if @userreport.count > 0
    			@userreport.each do |x|
    				puts x.inspect
    			end
    		end
=end    		
    	end
  end
  
  def concept
    #E-KBRI Concepts
  end
  
end