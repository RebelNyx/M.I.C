class ChangeColoumnOfUserdetails < ActiveRecord::Migration
  def change

  	change_column :userdetails , :type , :string , default: 'Band'
  end
end
