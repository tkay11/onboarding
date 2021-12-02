class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
    add_index :projects, :name, unique: true
  end
end
