Rails.application.routes.draw do
  namespace :comment do
    resources :comments
  end
end
