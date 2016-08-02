class AddColumnCommentableType < ActiveRecord::Migration
  def change

    add_column :comments, :commentable_type, null: false
    add_index :comments, [:commentable_id, :commentable_type]
  end
end
