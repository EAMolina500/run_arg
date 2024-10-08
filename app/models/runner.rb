class Runner < ApplicationRecord
  belongs_to :user
  belongs_to :organization, optional: true
  has_many :race_results
  has_many :races, through: :race_results
end
