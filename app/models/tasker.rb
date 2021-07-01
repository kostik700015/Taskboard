class Tasker < ApplicationRecord
  has_many :tasks, as: :client_tasker
end
