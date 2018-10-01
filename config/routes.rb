Rails.application.routes.draw do
  root to: redirect('/cookies')
  resources :cookies, only: %i[index create destroy]
end
