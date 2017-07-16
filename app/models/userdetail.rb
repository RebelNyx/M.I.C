class Userdetail < ActiveRecord::Base
  belongs_to :user

  validates :bio , :artist_type , presence: true
end
