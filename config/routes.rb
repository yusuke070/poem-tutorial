

Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  #get  '/about',    to: 'static_pages#help', as: 'helf'　こうやって書く

end
