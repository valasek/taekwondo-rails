class Matsogi < ApplicationRecord
  translates :name
  has_many :competitions_members
  has_many :sexes

  # separate different localizations of the record
  def cache_key
    super + '-' + Globalize.locale.to_s
  end
end
