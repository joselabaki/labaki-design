Rails.application.routes.draw do

  post 'emailapi/subscribe' => 'emailapi#subscribe'

  devise_for :admins

  #Define a route constraint to check if the locale is valid

valid_locale = /#{I18n.available_locales.join("|")}/

  locale_constraint = lambda do |request|
    request.params[:locale].nil? || request.params[:locale].match(valid_locale)
  end

  # Apply the locale constraint to the scope
  scope "(:locale)", locale: valid_locale, constraints: locale_constraint do
    root :to => 'static_pages#construction'
    resources :projects
    resources :references

    get '/info' => 'static_pages#info'
    get '/contact' => 'static_pages#contact'
    get '/construction' => 'static_pages#construction'
    get '/cms' => 'backend#cms'
  end

  # Redirect to the default locale if the locale is missing or invalid
#  get '(*path)', to: redirect { |params, request|
#    locale = params[:locale] || I18n.default_locale
#    path = params[:path]

#    "/#{locale}/#{path}"
#  }
get '*path', to: 'errors#not_found'
  # Redirect the root path to the default locale
  get '', to: redirect("/#{I18n.default_locale}")
end
