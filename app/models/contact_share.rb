class ContactShare < ActiveRecord::Base
  attr_accessible :contact_id, :user_id

  validates :contact_id, :user_id, :presence => true
end
