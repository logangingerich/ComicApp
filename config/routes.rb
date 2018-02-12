Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'comics/flash'
  get 'comics/aquaman'
  get 'comics/batman'
  get 'comics/greenlantern'
  get 'comics/superman'
  get 'comics/wonderwoman'
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
