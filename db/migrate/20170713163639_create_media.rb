class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :profile_photo , null: false
      t.string :photos
      t.string :song
      t.string :video
      t.string :link , null: false

      t.timestamps null: false
    end
  end
end
