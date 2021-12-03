Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    resources :onboarding, only: [:index] do
      get :next, on: :member
    end
    resources :about, only: [:index]
    resources :dashboard, only: [:index]
    resources :employees, only: [:index]
    resources :projects, only: [:index]
    resources :knowledges, only: [:index]
    resources :community, only: [:index]
    resources :tasks, only: [:index]
    resource :session, only: [:create, :destroy]

    resources :polls do
      scope module: :polls do
        resources :questions
      end
    end
  end
end
