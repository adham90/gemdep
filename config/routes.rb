Rails.application.routes.draw do
  get '/dependencies', to: 'rgems#index'
  post '/system_lib', to: 'rgems#create'
end
