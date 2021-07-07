class Offer < ApplicationRecord
  belongs_to :task
  belongs_to :tasker
end
