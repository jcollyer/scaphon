class Attachment < ActiveRecord::Base
  belongs_to :fileable, :polymorphic => true

  has_attached_file :file,
    # :styles => { :file_thumbnail => ["", :jpg] },
    :storage => :s3,
    :bucket => 'scaphon_data',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    },
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"


    # validates_attachment :file, content_type: { content_type: "docx" }
    # validates_attachment_content_type :file, :content_type => %w(application/pdf application/doc)
    # validates_format_of :file_file_name, :with => %r{\.(docx|doc|pdf)$}i
    # validates_attachment_content_type :file, :content_type => 'text/plain'



    validates_attachment_content_type :file, :content_type => %w(application/msword application/vnd.ms-office application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet application/pdf)

end
