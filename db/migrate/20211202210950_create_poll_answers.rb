class CreatePollAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :poll_answers do |t|
      t.integer :poll_id
      t.integer :employer_id
      t.json :data

      t.timestamps
    end
  end
end
