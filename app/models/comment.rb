class Comment < ActiveRecord::Base
  validates :text, :owner_id, presence: true

  belongs_to :commentable, polymorphic: true
  
end
