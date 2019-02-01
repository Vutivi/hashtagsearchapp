Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/hashtag',  to: 'hashtag#index',     as: 'hashtag'
  post '/hashtag',  to: 'hashtag#search',    as: 'search_hashtag'
  post '/hashtag',  to: 'hashtag#mark',      as: 'mark_hashtag'
  get  '/hashtag',  to: 'hashtag#view_read', as: 'view_read'

  root to: 'hashtag#index'
end
