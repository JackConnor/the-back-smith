class Skater < ActiveRecord::Base
  has_and_belongs_to_many :crews
  has_many :posts
  has_many :comments
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true
end
