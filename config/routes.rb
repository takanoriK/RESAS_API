Rails.application.routes.draw do
  get 'top' => 'top#index'
  post "top/get" => "top#get"
end

