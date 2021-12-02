class CreatePolls < ActiveRecord::Migration[6.1]
  def change
    create_table :polls do |t|
      t.integer :author
      t.string :link
      t.string :title
      t.string :description
      t.string :type, default: :shared
      t.integer :counter
      t.boolean :published

      t.timestamps
    end
  end
end
