class CreateJampadDetails < ActiveRecord::Migration
  def change
    create_table :jampad_details do |t|
      t.integer :no_of_guitar_amps , null: false
      t.integer :no_of_bass_amps , null: false
      t.integer :no_of_keyboard_amps , null: false
      t.integer :no_of_microphone , null: false
      t.integer :drumkit , null: false
      t.integer :sound_system , null: false
      t.string :guitar_amps_d
      t.string :bass_amps_d
      t.string :keyboard_amps_d
      t.string :microphone_d
      t.string :drumkit_d
      t.string :sound_system_d
      t.references :jampad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
