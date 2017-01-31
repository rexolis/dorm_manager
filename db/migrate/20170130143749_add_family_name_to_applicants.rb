class AddFamilyNameToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :family_name, :string
  end
end
