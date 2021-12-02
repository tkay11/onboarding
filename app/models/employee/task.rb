class Employee::Task < ApplicationRecord
  extend Enumerize

  belongs_to :employee
  validates :name, presence: true

  enumerize :status, in: [:todo, :in_progress, :done], default: :todo
end
