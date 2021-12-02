class Company < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
