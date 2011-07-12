class User < ActiveRecord::Base
  has_many :services
  attr_accessible :name, :email

  after_create :create_profiles
end
