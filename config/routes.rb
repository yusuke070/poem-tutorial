

Rails.application.routes.draw do
 
  root 'static_pages#home'
  get  '/about',  to: 'static_pages#about'
  
  get '/show',    to:'users#show' #投稿一覧
  get  '/new',    to:'users#new'# つぶやきページ
   post '/new',   to:'users#create',as: 'microposts' #投稿保存ページ
  
  
  #get  '/about',    to: 'static_pages#help', as: 'helf'　こうやって書く

end
