class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :student_number
      t.string :course_year
      t.string :home_address
      t.boolean :status

      t.timestamps null: false
    end
  end
end
