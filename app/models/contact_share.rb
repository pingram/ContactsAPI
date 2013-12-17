class ContactShare < ActiveRecord::Base
  attr_accessible :contact_id, :user_id

  belongs_to :contact
  belongs_to :user

  validates :contact_id, :user_id, :presence => true
  validates :contact_id, :uniqueness => { :scope => :user_id }
end
