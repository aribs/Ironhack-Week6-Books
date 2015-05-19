Rails.application.routes.draw do
 get '/' => 'books#index'
 post "/books/:id" => 'books#calculate_rating'
 resources :books
end
