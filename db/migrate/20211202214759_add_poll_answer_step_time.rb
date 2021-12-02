class AddPollAnswerStepTime < ActiveRecord::Migration[6.1]
  def change
    add_column :poll_answers, :poll_question_id, :integer
    add_column :poll_answers, :timer, :integer
  end
end
