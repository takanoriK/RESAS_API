Rails.application.routes.draw do
  #resources :items
  get 'top' => 'top#index'
  get "travels/show/:id" => "top#show"
  post "top/getdata" => "top#get_data"
  post "top/aaa" => "top#aaa"
end

