class Tasker < ApplicationRecord
  has_many :tasks, as: :client_tasker
  serialize :skills,Array
  has_many :offers
end
