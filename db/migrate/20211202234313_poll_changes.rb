class PollChanges < ActiveRecord::Migration[6.1]
  def change
    add_column :poll_questions, :detailed_answer, :boolean, default: false
    add_column :poll_questions, :required, :boolean, default: true
    add_column :poll_answers, :title, :string
    add_column :poll_answers, :extra, :json

    remove_column :poll_answers, :employer_id
  end
end
