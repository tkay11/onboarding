class CreateEmployeeTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_teams do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
