class Crew < ActiveRecord::Base
  has_and_belongs_to_many :skaters
  has_many :posts, through: :skaters
end
