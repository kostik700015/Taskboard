class Tasker < ApplicationRecord
  has_many :tasks, as: :client_tasker, dependent: :destroy 
  serialize :skills, Array
  has_many :offers, dependent: :destroy 
  has_one :task, through: :offers
  validates :username, presence: true
  validates :about, presence: true
end
