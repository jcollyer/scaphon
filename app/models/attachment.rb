class Attachment < ActiveRecord::Base
  belongs_to :fileable, :polymorphic => true

  has_attached_file :file,
    :storage => :s3,
    :bucket => 'scaphon_data',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    },
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"
end
