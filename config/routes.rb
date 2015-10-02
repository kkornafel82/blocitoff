Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'

  # resources :items do
  #   put :toggle
  # end
end

# link_to user_item_toggle_path(item) 
