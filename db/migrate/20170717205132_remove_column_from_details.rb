class RemoveColumnFromDetails < ActiveRecord::Migration
  def change
  	remove_column :userdetails , :profile_photo , :string
  end
end
