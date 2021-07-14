class Client < ApplicationRecord
  has_many :tasks, as: :client_tasker, dependent: :destroy 
  validates :username, presence: true
end
