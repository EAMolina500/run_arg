class User < ApplicationRecord
  has_one :runner
  has_one :organization
end
  