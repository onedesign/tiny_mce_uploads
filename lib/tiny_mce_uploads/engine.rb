require 'tiny_mce_uploads'
require 'rails'

module TinyMceUploads
  class Engine < Rails::Engine
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
  end # Engine
end # TinyMceUploads
