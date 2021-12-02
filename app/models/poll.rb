class Poll < ApplicationRecord
  has_many :poll_questions
  has_one :created_by, class_name: 'Employee'

  enum type: %i[public personal track]
end
