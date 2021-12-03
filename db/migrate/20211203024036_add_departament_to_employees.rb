class AddDepartamentToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :departament, :text
  end
end
