class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text, null: false
      t.integer :owner_id, null: false

      t.timestamps null: false
    end

    add_index :comments, :owner_id
  end
end
