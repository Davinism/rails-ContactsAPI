class MakeJustOneColumnUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_index :users, :user_name, :unique => true

    remove_column :users, :name
    remove_column :users, :email
  end
end
