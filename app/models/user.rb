class User < ActiveRecord::Base
  attr_accessible :name, :email

  has_many :contacts

  validates :name, :email, :presence => true
end
