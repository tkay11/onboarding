class CreateOnboardingSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :onboarding_steps do |t|
      t.string :name
      t.string :period

      t.timestamps
    end
  end
end
