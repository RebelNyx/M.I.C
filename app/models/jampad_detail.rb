class JampadDetail < ActiveRecord::Base
  belongs_to :jampad


  validates :no_of_guitar_amps ,:no_of_bass_amps , :no_of_keyboard_amps , presence: true

  validates :no_of_microphone , :drumkit , :sound_system , presence: true

end
