class PollAnswer < ApplicationRecord
  belongs_to :pool
  belongs_to :employee
end
