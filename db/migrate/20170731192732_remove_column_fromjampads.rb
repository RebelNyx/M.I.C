class RemoveColumnFromjampads < ActiveRecord::Migration
  def change
  	remove_column :jampads , :Full_Name , :string
  end
end
