class Jampad < ActiveRecord::Base
  belongs_to :user

  has_one :jampad_detail , dependent: :destroy


  validates :Full_Name , :Email , :Phone , :Jampad_Name , :city , :state , presence: true
end
