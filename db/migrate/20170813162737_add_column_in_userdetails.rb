class AddColumnInUserdetails < ActiveRecord::Migration
  def change

  	add_column :userdetails , :musician , :string
  end
end
