Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users,
  path_names:  { sign_in: 'login', sign_out: 'logout' },
  controllers: { registrations: 'registrations', sessions: 'sessions', passwords: 'passwords' }
end