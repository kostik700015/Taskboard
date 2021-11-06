class Client < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :username, presence: true
end
