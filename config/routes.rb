Rails.application.routes.draw do
root to: 'books#top'
post 'books/show' => 'books#create'
get 'books/:id' => 'books#show', as: ''
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :books
end
