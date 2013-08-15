class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :favorited, :user_id

  has_many :user

  validates :name, :email, :favorited, :user_id, :presence => true
end
