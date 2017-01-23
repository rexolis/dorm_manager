class AddFamilyNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :family_name, :string
  end
end
