class Post < ActiveRecord::Base
  belongs_to :skater
  has_many :crews, through: :skaters
  has_many :comments
end
