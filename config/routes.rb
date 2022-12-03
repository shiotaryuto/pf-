Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  devise_for :users,skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

namespace :admin do
  get '' => 'homes#top' ,as: 'top'
  resources :users, only: [:index, :show, :edit]
  resources :game_titles, only: [:index, :create, :edit, :update]
  resources :games, only: [:show]
end
root to: 'public/homes#top'
namespace :public do
  get'' => 'homes#top' ,as: 'top'
  post '/', to: 'homes#create'
  get '/about' => 'homes#about' ,as: 'about'
  resources :games, only: [:new, :show, :create, :edit, :update, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  get '/current_user/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
  patch '/current_user/withdrawal' => 'users#withdrawal', as: 'withdrawal'

end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
