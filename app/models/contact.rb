class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id

  belongs_to :user

  validates :name, :email, :user_id, :presence => true
end
