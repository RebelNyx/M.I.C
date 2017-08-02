class Jampad < ActiveRecord::Base
  belongs_to :user

  has_one :jampad_detail , dependent: :destroy


  validates :Email , :Phone , :Jampad_Name , :city , :state , :country , presence: true

  validates :Phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" } ,uniqueness: true

  validates :Email , :Jampad_Name , uniqueness: { case_sensitive: false }


     def country_name


    # Assuming country_select is used with User attribute `country_code`
    # This will attempt to translate the country name and use the default
    # (usually English) name if no translation is available

   
    country = ISO3166::Country[self.country]

     # same as this in javascript because call in diff user objects instance object
     #for current_user not an instance hence we used id if instance used and wanna use attribute
     # you have to use self
     # if you face any confusion use byebug here :D

    country.translations[I18n.locale.to_s] || country.name

  end
  

#by using countries gem

end
