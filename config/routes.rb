Rails.application.routes.draw do
  resources :kimatus
  resources :gakuseis
  get 'messages/index'
  get 'messages', to: 'messages#index'
  
  get 'messages/add'
  post 'messages/add', to: 'messages#create'
  
  get 'messages/edit/:id', to: 'messages#edit'
  patch 'messages/edit/:id', to: 'messages#update'
  
  get 'messages/delete/:id', to: 'messages#delete'
  get 'messages/:id', to: 'messages#show'
  
  get 'people/find'
  post 'people/find'
  
  post "cards/add"
  get 'cards/index'
  get 'cards/show/:id' ,to: "cards#show"
  get 'cards/add'
  get 'cards/edit/:id' ,to: "cards#edit"
  patch "cards/edit/:id" ,to: "cards#edit"
  get 'cards/delete/:id' ,to: "cards#delete"
 
  resources :books
  get 'students/index'
  get 'students/show/:id',to: "students#show"
  get 'students/add'
  post 'students/create'
  get 'students/edit/:id',to: "students#edit#"
  patch 'students/edit/:id',to: "students#update"

  resources :items
  get 'people/delete/:id', to: 'people#delete'
  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to: 'people#update'
  get 'people/add'
  post "people/add" , to: "people#create"
  get 'people/index'
  get "people", to: "people#index"
  get 'people/:id', to: 'people#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "hello/index"
  post "hello/index"
  get "hello/other"

  get "aisatsu/myname"
  post "aisatsu/myname"
  
  get "aisatsu/calc"
  post "aisatsu/calc"
  
  get "aisatsu", to: "aisatsu#myname"
  get "aisatsu/keisan"

end
