class Poll < ApplicationRecord
  has_many :poll_questions, dependent: :destroy
  # has_one :created_by, class_name: 'Employee'

  # enum type: %i[shared personal track]
end
