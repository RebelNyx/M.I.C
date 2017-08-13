class ChangeColumnOfDetails < ActiveRecord::Migration
  def change
 
    change_column :userdetails , :type, :string , null: false


  end
end
