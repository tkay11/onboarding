class Company < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :projects, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
