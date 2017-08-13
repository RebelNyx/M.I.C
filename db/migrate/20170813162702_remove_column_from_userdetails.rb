class RemoveColumnFromUserdetails < ActiveRecord::Migration
  def change

  	remove_column :userdetails, :type, :string
  end
end
