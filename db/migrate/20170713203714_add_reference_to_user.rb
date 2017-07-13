class AddReferenceToUser < ActiveRecord::Migration
  def change
  	add_reference :user_types, :user, index: true
  end
end
