class ChangeColoumnOfDetails < ActiveRecord::Migration
  def change
  	change_column :userdetails , :bio , :string , null: false
  	change_column :userdetails , :artist_type , :string , null: false
  end
end
