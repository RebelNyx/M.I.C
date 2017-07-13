class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, presence: true, uniqueness: true,case_sensitive: true
    add_column :users, :type, :string
    add_column :users, :name, :string,presence: true
  end
end
