class JampadDetailsController < ApplicationController

 before_action :authenticate_user!

 before_action :curr_detail ,only:[:edit,:update]

  def create_jampad_details

 	   @detail = JampadDetail.new(jampad_detail_params)

    @detail.jampad_id = current_user.jampads.first.id

    respond_to do |format|
      if @detail.save
        format.html { redirect_to '/jampad_home' , notice: 'Jampad detail successfully created.' }
       
      else
        format.js {  }
     
      end
    end


  end


  def details

  	@detail = JampadDetail.new

  end

  def edit
    

  end
   

   def update
 

       respond_to do |format|
      if @detail.update(jampad_detail_params)
       
          format.html { redirect_to :back , notice: 'jampad details successfully updated.' }

      else


      format.js { @update = true }


      end
    end
  end


private




    def jampad_detail_params

      params.require(:jampad_detail).permit(:no_of_guitar_amps, :guitar_amps_d,
       :no_of_bass_amps, :bass_amps_d, :no_of_keyboard_amps,
        :keyboard_amps_d, :no_of_microphone , :microphone_d ,
        :drumkit , :drumkit_d ,:sound_system , :sound_system_d,:jampad_id)

    end

    def curr_detail

      @detail=JampadDetail.find(params[:id])


    end


end


