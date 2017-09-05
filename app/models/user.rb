class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         devise :omniauthable, :omniauth_providers => [:facebook]


  
         validates :username , :first_name , presence: true
         validates :username , uniqueness: { case_sensitive: false }

         has_one :userdetail , dependent: :destroy

         has_many :posts , dependent: :destroy

         has_many :jampads , dependent: :destroy



enum role: {member: 0, editor: 2, moderator: 1, admin: 3} 

def can_modify user
 if User.roles[user.role] > User.roles["editor"]
      return true
     else
       return userdetail.id == user.id
     end
 
   end





           


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

  def user_posts user_id

    user = User.find(user_id)

    user.posts

  end


  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.username = auth.info.name
    user.first_name = auth.info.name
    user.last_name = ""   # assuming the user model has a name
    user.profile_photo = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  end

end

   
    def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end





         



end
