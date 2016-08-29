class Team < ApplicationRecord
  has_many :members
  has_one :user
end
