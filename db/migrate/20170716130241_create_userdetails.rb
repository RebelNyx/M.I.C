class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.references :user, index: true, foreign_key: true
      t.string :bio , null: true
      t.string :artist_type, null: true
      t.string :profile_photo
      t.string :fblink
      t.string :ytlink
      t.string :soundcloud

      t.timestamps null: false
    end
  end
end
