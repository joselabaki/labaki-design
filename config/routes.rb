Rails.application.routes.draw do

  devise_for :admins

  scope "(:locale)" , locale: /#{I18n.available_locales.join("|")}/   do
  root 'projects#index'
  resources :projects
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/cms' => 'backend#cms'

end
get '*path' , to: redirect("/#{I18n.default_locale}/%{path}")
get '' , to: redirect("/en")


end
