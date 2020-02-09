Rails.application.routes.draw do

  devise_for :admins

  scope "(:locale)" , locale: /#{I18n.available_locales.join("|")}/   do
  root :to => 'static_pages#construction'
  resources :projects
  resources :references

  get '/info' => 'static_pages#info'
  get '/contact' => 'static_pages#contact'
  get '/construction' => 'static_pages#construction'
  get '/cms' => 'backend#cms'

end
get '*path' , to: redirect("/#{I18n.default_locale}/%{path}")
get '' , to: redirect("/en")


end
