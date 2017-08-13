class ChangecolumnOfUserdetails < ActiveRecord::Migration
  def change

  	change_column :userdetails , :musician, :string , null: false , default: 'Band'
  	 end
end
