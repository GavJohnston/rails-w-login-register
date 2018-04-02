Rails.application.routes.draw do
 devise_for :doctors
  get 'welcome/index'

 resources :users do
 resources :extras
end 

 root 'welcome#index'

end