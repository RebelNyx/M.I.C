class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  
         validates :username , :first_name , presence: true
         validates :username , uniqueness: { case_sensitive: false }

         has_one :userdetail


def follow_relation user_id

  	if id == user_id
      return UserRelations::SELF 

  	elsif FollowerMapping.where(:followee_id => user_id, :follower_id => id).length > 0
  		return UserRelations::FOLLOWED

  	else
  		return UserRelations::NOTFOLLOWED

  	end

  end

  def can_follow user_id

  	return follow_relation(user_id) == UserRelations::NOTFOLLOWED

  end

  def can_un_follow user_id

    return follow_relation(user_id) == UserRelations::FOLLOWED

  end

  def followee_ids

  	FollowerMapping.where(follower_id: id).pluck(:followee_id)

  end

   def follower_ids

    FollowerMapping.where(followee_id: id).pluck(:follower_id)

  end

   def followees_count

    FollowerMapping.where(follower_id: id).count

  end

   def followers_count

    FollowerMapping.where(followee_id: id).count

  end


  class UserRelations

  	SELF = 0
  	FOLLOWED = 1
  	NOTFOLLOWED = 2

  end

         



end
