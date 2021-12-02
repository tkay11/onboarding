class CreatePollQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :poll_questions do |t|
      t.string :text
      t.string :description
      t.integer :poll_id
      t.integer :number
      t.string :type
      t.string :placeholder

      t.timestamps
    end
  end
end
