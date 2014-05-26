class BoardMember < ActiveRecord::Base
  has_many :pictures, as: :imageable
end
