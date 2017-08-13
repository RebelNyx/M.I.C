class AddColumnToDetails < ActiveRecord::Migration
  def change
   
   add_column :userdetails , :type , :string 

  end
end
