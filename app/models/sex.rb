class Sex < ApplicationRecord
  translates :sex
  has_many :members

  # separate different localizations of the record
  def cache_key
    super + '-' + Globalize.locale.to_s
  end
end
