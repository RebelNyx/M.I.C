class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :username , null:false
      t.string :full_name , null: false
      t.string :type_of_user , null:false

      t.timestamps null: false
    end
  end
end
