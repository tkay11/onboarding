class Project < ApplicationRecord
  extend Enumerize

  belongs_to :company
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  enumerize :kind, in: [:agile, :scrum]
end
