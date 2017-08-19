class HomeController < ApplicationController


 layout 'home'
	
	def index

	end

 def people
   
    @users = User.all


  end
	
end
