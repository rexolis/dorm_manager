class AddMiddleNameToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :middle_name, :string
  end
end
