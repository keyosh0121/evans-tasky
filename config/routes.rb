Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'home#top'
  get '/west' => 'home#west'
  get '/east' => 'home#east'
  get '/east/reserve' => 'home#reserve_east'
  get '/west/reserve' => 'home#reserve_west'
  post '/east/reserve' => 'home#reserve_east_send'
  post '/west/reserve' => 'home#reserve_west_send'
  get '/admin' => 'home#admin'
end
