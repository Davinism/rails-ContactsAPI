class ChangeOwnerIDtoCommentableId < ActiveRecord::Migration
  def change
    rename_column :comments, :owner_id, :commentable_id
  end
end
