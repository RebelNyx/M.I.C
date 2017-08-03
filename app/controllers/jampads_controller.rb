class JampadsController < ApplicationController

     before_action :authenticate_user! , except: [:jampad_home]

       before_action :show, only: [:jampad_show, :jampad_edit , :jampad_update]


  def jampad_home
    @jampads=Jampad.all
    

  end

  def partner_with_us

  @jampad = Jampad.new


  end

  def jampad_show
  
  @detail = @jampad.jampad_detail

  end

  def jampad_edit



    end



  def jampad_update


       respond_to do |format|
      if @jampad.update(jampad_params)
       
          format.html { redirect_to '/jampad_home' , notice: 'jampad details successfully updated.' }

      else


      format.js { @update = true }


      end
    end
  end

 



  def create_partner

@detail =  JampadDetail.new


  	   @jampad = Jampad.new(jampad_params)

    @jampad.user_id = current_user.id

    respond_to do |format|
      if @jampad.save

        

        format.js {  @save = true }
       
      else
        format.js { @save = false }
     
      end
    end

  end





private


    def jampad_params
      params.require(:jampad).permit(:Email, :Phone, :Jampad_Name, :city, :state)
    end

    def show 

      @jampad = Jampad.find(params[:id])

    end



end



