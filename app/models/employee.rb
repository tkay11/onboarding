class Employee < ApplicationRecord
  belongs_to :company
  has_many :tasks, dependent: :destroy, class_name: 'Employee::Task', foreign_key: :employee_id
  has_many :employee_teams, dependent: :destroy
  has_many :teams, through: :employee_teams

  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
