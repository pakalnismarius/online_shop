Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#welcome'
  get '/pradinis', to: 'welcome#home', as: 'home'
  get 'apie_mus', to: 'welcome#about_us', as: 'about_us'
end
