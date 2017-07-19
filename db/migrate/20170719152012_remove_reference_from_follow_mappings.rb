class RemoveReferenceFromFollowMappings < ActiveRecord::Migration
  def change
  	remove_reference :follower_mappings , :user , index: true
  end
end
