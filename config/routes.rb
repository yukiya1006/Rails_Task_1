Rails.application.routes.draw do

  resources :books
  post '/books' => 'books#create'
  root to: 'homes#top'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  # get 'books/:id' => 'books#show', as: 'book'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
