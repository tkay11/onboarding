FactoryBot.define do
  factory :onboarding_step_task, class: 'OnboardingStep::Task' do
    onboarding_step { nil }
    name { "MyString" }
    url { "MyString" }
  end
end
