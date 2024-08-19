class Race < ApplicationRecord
  belongs_to :event
  has_many :race_results
  has_many :runners, through: :race_results
end
