class User < ActiveRecord::Base
  attr_accessible :username

  has_many :contacts
  has_many :contact_shares
  has_many :shared_contacts, :through => :contact_shares

  validates :username, :presence => true
  validates :username, :uniqueness => true
end
