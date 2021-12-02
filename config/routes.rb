Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    namespace :leader do
      root to: 'welcome#index'
    end
    namespace :employee do
      root to: 'welcome#index'

      resource :onboarding, only: [] do
        get :first_day
        get :second_day
        get :third_day
        get :fourth_day
        get :fifth_day
        get :weekly
        get :third_week
      end
      resources :tasks, only: [:index]
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
