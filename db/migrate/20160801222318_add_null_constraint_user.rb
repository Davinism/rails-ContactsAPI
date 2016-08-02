class AddNullConstraintUser < ActiveRecord::Migration
  def change
    change_column :users, :user_name, :string, default: "user_name", null: false
  end
end
