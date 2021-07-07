class Task < ApplicationRecord
  belongs_to :client_tasker, polymorphic: true
  has_many :offers
end
