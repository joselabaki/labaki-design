Rails.application.routes.draw do
  devise_for :admins

  scope "(:locale)" , locale: /#{I18n.available_locales.join("|")}/   do
  root 'projects#index'
  resources :projects
end
get '*path' , to: redirect("/#{I18n.default_locale}/%{path}")
get '' , to: redirect("/#{I18n.default_locale}")


end
