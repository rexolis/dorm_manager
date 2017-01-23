class AddCourseAndYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_and_year, :string
  end
end
