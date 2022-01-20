Rails.application.routes.draw do
  root 'urls#new' # Done

  post '/urls', to: 'urls#create', as: 'urls' # Done
  get '/urls/:id', to: 'urls#show', as: 'url' # Done

  get '/:shortcode', to: 'urls#redirect_to_url', as: 'redirect' # Done

  get '/:shortcode/stat', to: 'analytics#show', as: 'stat' # Done
end
