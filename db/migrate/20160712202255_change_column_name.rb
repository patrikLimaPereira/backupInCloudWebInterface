class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users_groups, :users__id, :users_id
  end
end
