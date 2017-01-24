class AddPermitDateToPermissions < ActiveRecord::Migration
  def change
    add_column :permissions, :permit_date, :date
  end
end
