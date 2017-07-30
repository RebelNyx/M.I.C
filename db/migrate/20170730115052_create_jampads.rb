class CreateJampads < ActiveRecord::Migration
  def change
    create_table :jampads do |t|
      t.string :Full_Name
      t.string :Email
      t.string :Phone
      t.string :Jampad_Name
      t.string :city
      t.string :state
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
