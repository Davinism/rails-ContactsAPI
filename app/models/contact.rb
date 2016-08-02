class Contact < ActiveRecord::Base
  validates :name, :email, :user_id, presence: true
  validates_uniqueness_of :user_id, :scope => [:email]

  belongs_to :user
  has_many :contact_shares, dependent: :destroy
  has_many :shared_users,
    through: :contact_shares,
    source: :user
  has_many :comments, as: :commentable, dependent: :destroy
end
