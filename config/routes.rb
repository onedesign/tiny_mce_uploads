Rails.application.routes.draw do
  scope '/tiny_mce_uploads' do
    resources :attachments
  end
end
