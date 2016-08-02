class ContactShare < ActiveRecord::Base
  validates :user_id, :contact_id, presence: true
  validates_uniqueness_of :user_id, :scope => [:contact_id]

  belongs_to :user
  belongs_to :contact

  
end
