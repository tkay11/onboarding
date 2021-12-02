class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :teams, :name, unique: true
  end
end
