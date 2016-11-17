Rails.application.routes.draw do
  get '/dependencies', to: 'rgems#index'
end
