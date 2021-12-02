class CreateOnboardingStepTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :onboarding_step_tasks do |t|
      t.references :onboarding_step, null: false, foreign_key: true
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
