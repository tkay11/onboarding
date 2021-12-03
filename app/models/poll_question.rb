class PollQuestion < ApplicationRecord
  belongs_to :poll
  has_many :poll_answers, dependent: :destroy

  # enum type: %w[selecter checkbox textarea image_selecter]
end
