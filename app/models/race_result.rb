class RaceResult < ApplicationRecord
  belongs_to :runner
  belongs_to :race
  
  validates :time, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :position, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
