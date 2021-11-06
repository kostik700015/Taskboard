class Task < ApplicationRecord
  belongs_to :client
  belongs_to :tasker
  has_many :offers, dependent: :destroy
end
