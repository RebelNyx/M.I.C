class AddColumnToJampads < ActiveRecord::Migration
  def change
  	add_column :jampads , :country , :string 
  end
end
