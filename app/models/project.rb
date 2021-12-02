class Project < ApplicationRecord
  belongs_to :company
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
