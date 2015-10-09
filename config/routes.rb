Rails.application.routes.draw do
  # get 'items/new'

  # get 'users/show'

  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'

  resources :users, only: [:show] do
      resources :items, only: [:create, :destroy]
  end   

end





# resources :items do
  #   put :toggle
  # end


# link_to user_item_toggle_path(item) 
