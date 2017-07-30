class ChangeColumnOfJamPads < ActiveRecord::Migration
  def change
  
  change_column :jampads , :Full_Name , :string , null: false
  change_column :jampads , :Email , :string , null: false
  change_column :jampads , :Phone , :string , null: false
  change_column :jampads , :Jampad_Name , :string , null: false
  change_column :jampads , :city , :string , null: false
  change_column :jampads , :state , :string , null: false


  end
end
