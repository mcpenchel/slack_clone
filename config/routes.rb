Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # A page to display the chatroom and it's messages

  # chatrooms index would be a list of all the chatrooms
  # ex: general, freelance, batch-447

  # chatrooms show is actually where all the messages
  # of that channel will be displayed.... and also where
  # users can send new messages

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

end
