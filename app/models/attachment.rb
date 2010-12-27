class Attachment < ActiveRecord::Base
  has_attached_file :upload, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment_presence :upload
  validates_attachment_content_type :upload, :content_type => /image/, :if => lambda { TinyMceUploads.only_allow_images }

  def image?
    upload_content_type =~ /^image/
  end
end
