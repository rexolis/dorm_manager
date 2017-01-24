class AddRemarksToAccountabilities < ActiveRecord::Migration
  def change
    add_column :accountabilities, :remarks, :string
  end
end
