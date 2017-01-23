class AddUserIdToPermissions < ActiveRecord::Migration
  def change
    add_column :permissions, :user_id, :int
  end
end
