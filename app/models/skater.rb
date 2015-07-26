class Skater < ActiveRecord::Base
  has_and_belongs_to_many :crews
  has_many :posts
  has_many :comments
  has_secure_password
end
