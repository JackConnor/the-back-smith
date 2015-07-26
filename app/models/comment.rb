class Comment < ActiveRecord::Base
  belongs_to :skater #note: this is the person who wrote it
  belongs_to :post
end
