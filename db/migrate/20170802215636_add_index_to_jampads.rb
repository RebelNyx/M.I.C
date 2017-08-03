class AddIndexToJampads < ActiveRecord::Migration
  def change
  		add_index :jampads , :Email , unique: true
  		add_index :jampads , :Phone , unique: true
  end
end
