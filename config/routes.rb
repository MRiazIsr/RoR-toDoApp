Rails.application.routes.draw do
  resources :tasks, only: [:index]

  scope '/task' do

    resources :tasks, path: '/create', only: [:create]

    resources :tasks, path: '/update', only: [:update]

    resources :tasks, path: '/delete', only: [:destroy]

  end

end
