class Member < ApplicationRecord
  belongs_to :team
  belongs_to :sex
  belongs_to :level
  has_and_belongs_to_many :competitions
end
