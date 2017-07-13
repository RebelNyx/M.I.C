class Medium < ActiveRecord::Base
	validates :profile_photo , presence: true
	validates :link , presence: true

	belongs_to :user
end
