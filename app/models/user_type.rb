class UserType < ActiveRecord::Base
	belongs_to :user

	validates :username , presence: true
	validates :type , presence: true
	validates :full_name, presence: true

	validates :username , uniqueness: { case_sensitive: false }
	

end
