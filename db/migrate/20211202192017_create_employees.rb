class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.references :company, null: false, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :patronymic
      t.string :position
      t.string :email
      t.string :phone
      t.string :age
      t.string :location

      t.timestamps
    end
    add_index :employees, :email, unique: true
  end
end
