class Tull < ApplicationRecord
  has_many :tull_translations
  translates :name, :fallbacks_for_empty_translations => true
  accepts_nested_attributes_for :tull_translations
  has_many :competitions_members
  has_many :sexes

  # separate different localizations of the record
  def cache_key
    super + '-' + Globalize.locale.to_s
  end
end