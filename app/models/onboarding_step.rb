class OnboardingStep < ApplicationRecord
  extend Enumerize

  has_many :tasks, dependent: :destroy, class_name: 'OnboardingStep::Task'

  validates :name, :period, presence: true

  enumerize :period, in: [:first_day, :second_day, :third_day, :fourth_day, :fifth_day, :weekly, :third_week]
end
