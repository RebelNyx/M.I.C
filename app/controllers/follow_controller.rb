class FollowController < ApplicationController

		before_action :authenticate_user!

	def follow_toggle
  	@followee_id = params[:followee_id]


  	if current_user.can_follow(@followee_id)
  		FollowerMapping.create(:followee_id => @followee_id, :follower_id => current_user.id)
      @follow = true

    elsif current_user.can_un_follow(@followee_id)
      FollowerMapping.where(:followee_id => @followee_id, :follower_id => current_user.id).first.destroy
       @follow = false
      
  	end

  end




  def followers 

    user = User.find(params[:id])


    @followers = User.find(user.follower_ids);

end

 def following

  user = User.find(params[:id])

  @following = User.find(user.followee_ids);

  end

end

