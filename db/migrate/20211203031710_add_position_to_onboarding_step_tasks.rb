class AddPositionToOnboardingStepTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :onboarding_step_tasks, :position, :integer
  end
end
