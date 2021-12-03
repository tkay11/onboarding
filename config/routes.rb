Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    namespace :leader do
      root to: 'welcome#index'
    end

    resources :employees, only: [:index]
    resources :knowledges, only: [:index]
    resources :community, only: [:index]
    resources :tasks, only: [:index]

    resources :polls do
      scope module: :polls do
        resources :questions
      end
    end
  end
end
