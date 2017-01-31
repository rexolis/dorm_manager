class AddIndexToApplicantsEmail < ActiveRecord::Migration
  def change
    # add_column :applicants_emails, :email, :string
    add_index :applicants, :email, unique: true
  end
end
