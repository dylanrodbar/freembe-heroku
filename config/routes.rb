Rails.application.routes.draw do
  namespace 'api' do
    resources :categories
    resources :subcategories
    resources :subcategoriesxcategories
    resources :users
    resources :telephones
    resources :emails
    resources :announcements
    resources :favorites
    resources :comments
    resources :admins
    post 'authenticate', to: 'authentication#authenticate'
    get 'categorybyname', to: 'categories#byname'
    get 'randomannouncement', to: 'announcements#random'

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
