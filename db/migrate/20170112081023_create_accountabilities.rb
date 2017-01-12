class CreateAccountabilities < ActiveRecord::Migration
  def change
    create_table :accountabilities do |t|
      t.string :classification
      t.text :description
      t.integer :payment
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
