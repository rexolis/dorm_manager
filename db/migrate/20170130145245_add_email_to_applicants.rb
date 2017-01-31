class AddEmailToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :email, :string
  end
end
