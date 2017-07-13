class AddUniquetoUsers < ActiveRecord::Migration
  def change
  	add_index "user_types", ["username"], unique: true
  end
end
