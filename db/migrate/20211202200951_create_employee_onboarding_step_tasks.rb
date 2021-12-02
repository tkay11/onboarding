class CreateEmployeeOnboardingStepTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_onboarding_step_tasks do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :onboarding_step_task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
