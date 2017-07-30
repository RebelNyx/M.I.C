class JampadsController < ApplicationController

     before_action :authenticate_user!

    before_action :check , only: [:partner_with_us]


   def check 

   	if current_user.jampads.first

   		redirect_to '/details'

   	end
   	

end






  def jampad_home
  end

  def partner_with_us

  @jampad = Jampad.new


  end

  def jampad_show
  end


  def create_partner

   
  	   @jampad = Jampad.new(jampad_params)

    @jampad.user_id = current_user.id

    respond_to do |format|
      if @jampad.save
        format.html { redirect_to '/details' , notice: 'Userdetail was successfully created.' }
       
      else
        format.html { render 'jampads/partner_with_us' }
     
      end
    end

  end





private


    def jampad_params
      params.require(:jampad).permit(:Full_Name, :Email, :Phone, :Jampad_Name, :city, :state)
    end


end




