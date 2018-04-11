class Team < ApplicationRecord
  belongs_to :match
  has_and_belongs_to_many :players
  accepts_nested_attributes_for :players
end
