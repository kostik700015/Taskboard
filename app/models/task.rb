class Task < ApplicationRecord
  belongs_to :client
  has_many :offers, dependent: :destroy
end
