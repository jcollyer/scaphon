class Newsletter < ActiveRecord::Base
  has_many :pictures, as: :imageable
  has_many :attachments, as: :fileable
end
