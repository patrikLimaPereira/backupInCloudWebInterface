class CreateUsersGroupsJoinTable < ActiveRecord::Migration
  def change
    
     create_table :users_groups, id: false do |t|
     t.integer :users__id
     t.integer :groups_id
     
     end 
  end
end