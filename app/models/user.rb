class User < ActiveRecord::Base
	require 'bcrypt'
		has_many :lists
	attr_accessor :password
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :first_name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :password_confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create

  salt= Digest::SHA1.hexdigest("# We add {email} as unique value and #{Time.now} as random value")
  encrypted_password= Digest::SHA1.hexdigest("Adding #{salt} to {password}")
end
