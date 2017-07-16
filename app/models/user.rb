class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD

  has_many :media
  has_one :user_type
  
=======
         validates :username , :first_name , presence: true
         validates :username , uniqueness: { case_sensitive: false }
>>>>>>> new_db
end
