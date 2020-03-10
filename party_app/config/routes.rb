Rails.application.routes.draw do
 get '/index' => 'main#index'
 get '/results' => 'main#results'
 root to: 'main#index'
end
