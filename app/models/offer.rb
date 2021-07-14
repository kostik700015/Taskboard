class Offer < ApplicationRecord
  belongs_to :task
  belongs_to :tasker
  has_many :comments, dependent: :destroy
  
  validates :deadline, :rate, :message, presence: true 
end
