class AddDueDateToAccountabilities < ActiveRecord::Migration
  def change
    add_column :accountabilities, :due_date, :date
  end
end
