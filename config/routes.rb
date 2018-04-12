Rails.application.routes.draw do
  resources :chatbot_contents
  resources :message_reaction_references
  resources :message_references
  resources :messages
  resources :message_reactions
  resources :cluster_user_references
  resources :clusters do
    resources :message_references
  end
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :ranks
  resources :users

  get 'messages/:number_of_messages', to: 'message_references#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
