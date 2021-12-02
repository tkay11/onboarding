class CreateEmployeeTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_tasks do |t|
      t.references :employee, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
