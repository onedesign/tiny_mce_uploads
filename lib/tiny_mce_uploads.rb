require 'tiny_mce'
require 'dynamic_form'
require 'tiny_mce_uploads/engine'

module TinyMceUploads
  # Controls the superclass of the AttachmentsController. By default, this is
  # ApplicationController. You may want to set this if, for instance, you have
  # some BaseController that sets up authentication, etc.
  mattr_accessor :attachments_controller_superclass_name
  self.attachments_controller_superclass_name = "ApplicationController"

  mattr_accessor :only_allow_images
  self.only_allow_images = false
end
