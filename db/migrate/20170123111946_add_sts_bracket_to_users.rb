class AddStsBracketToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sts_bracket, :string
  end
end
