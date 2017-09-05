class Userdetail < ActiveRecord::Base
  belongs_to :user

  validates :bio , :artist_type  , :musician , presence: true






  def can_modify user
 if User.roles[user.role] >= User.roles["editor"]
      return true
     else
       return user.id == user_id
     end
 
   end



end
