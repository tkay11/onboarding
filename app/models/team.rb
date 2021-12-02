class Team < ApplicationRecord
  belongs_to :company
  has_many :employee_teams, dependent: :destroy
  has_many :employees, through: :employee_teams
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
