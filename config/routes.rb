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
  end
end
