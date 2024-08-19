class Organization < ApplicationRecord
  belongs_to :user
  has_many :runners
  has_many :events
end
