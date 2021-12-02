class EmployeeOnboardingStepTask < ApplicationRecord
  belongs_to :employee
  belongs_to :onboarding_step_task, class_name: 'OnboardingStep::Task'
end
