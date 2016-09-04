class Member < ApplicationRecord
  belongs_to :team
  belongs_to :sex
  belongs_to :level
end
