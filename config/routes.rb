Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }


  root to: 'homes#top'
  get 'about' => 'homes#about'

  namespace :public do
    resources :deliveries, only: [:index, :edit]
    resources :orders, only: [:new, :confirmation, :index, :show]
    resources :items, only: [:index, :show]
    resources :costomers, only: [:show, :edit, :quit]
   end

  namespace :admin do
    resources :orders, only: [:all_order, :index, :show]
    resources :genre, only: [:index, :edit]
    resources :items, only: [:index, :show, :new, :edit]
  end

  resources :cart_items, only: [:show]

end
