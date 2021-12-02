class Employee < ApplicationRecord
  extend Enumerize

  belongs_to :company
  has_many :tasks, dependent: :destroy, class_name: 'Employee::Task', foreign_key: :employee_id
  has_many :employee_teams, dependent: :destroy
  has_many :teams, through: :employee_teams
  has_many :employee_onboarding_step_tasks, dependent: :destroy
  has_many :onboarding_step_tasks, through: :employee_onboarding_step_tasks
  has_many :employee_services, dependent: :destroy
  has_many :services, through: :employee_services

  validates :email, presence: true, uniqueness: { case_sensitive: false }

  enumerize :role, in: [:worker, :mentor, :leader], default: :worker
end
