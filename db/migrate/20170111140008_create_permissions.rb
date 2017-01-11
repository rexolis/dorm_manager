class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :applicant
      t.string :student_number
      t.string :permit_type
      t.text :description
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
