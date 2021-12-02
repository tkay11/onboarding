class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  self.inheritance_column = :entity_type
end
