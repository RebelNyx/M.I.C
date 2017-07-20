class UserdetailsController < ApplicationController
  before_action :set_userdetail, only: [:show, :edit, :update, :destroy]

    before_action :authenticate_user!

    before_action :check , only: [:new]

    def check

      if current_user.userdetail

       redirect_to controller: 'userdetails', action: 'show', id: current_user.userdetail.id 
   

    end

  end
  




  # GET /userdetails
  # GET /userdetails.json
  def index
    @userdetails = Userdetail.all
  end

  def users
    @users = User.where.not(id: current_user.id)
  end


  # GET /userdetails/1
  # GET /userdetails/1.json
  def show
  end

  # GET /userdetails/new
  def new
    @userdetail = Userdetail.new

  end

  # GET /userdetails/1/edit
  def edit
  end

  # POST /userdetails
  # POST /userdetails.json
  def create
    @userdetail = Userdetail.new(userdetail_params)

    @userdetail.user_id = current_user.id

    respond_to do |format|
      if @userdetail.save
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully created.' }
        format.json { render :show, status: :created, location: @userdetail }
      else
        format.html { render :new }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userdetails/1
  # PATCH/PUT /userdetails/1.json
  def update
    respond_to do |format|
      if @userdetail.update(userdetail_params)
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @userdetail }
      else
        format.html { render :edit }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdetails/1
  # DELETE /userdetails/1.json
  def destroy
    @userdetail.destroy
    respond_to do |format|
      format.html { redirect_to userdetails_url, notice: 'Userdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upload
        uploaded_file = params[:image]

        if uploaded_file.nil?

          redirect_to :back

        else
    
    filename = SecureRandom.hex + "." +uploaded_file.original_filename.split('.')[1]
    filepath = Dir.pwd + "/public/uploads/" + filename
  File.open(filepath,'wb') do |file|
    file.write(uploaded_file.read())
  end
    
   
    current_user.profile_photo = filename
    current_user.save!

    redirect_to :back

  end
    

  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userdetail
      @userdetail = Userdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userdetail_params
      params.require(:userdetail).permit(:user_id, :bio, :artist_type, :profile_photo, :fblink, :ytlink, :soundcloud)
    end
end
