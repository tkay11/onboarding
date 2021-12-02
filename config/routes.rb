Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    namespace :admin do
      root to: 'welcome#index'
    end
    namespace :company do
      root to: 'welcome#index'
    end
    namespace :employee do
      root to: 'welcome#index'
      resources :tasks, only: [:index]
    end
  end
end
