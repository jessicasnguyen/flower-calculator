Rails.application.routes.draw do

  namespace :api do
    resources :flowers
  end

end
