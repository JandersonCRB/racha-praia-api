class Team < ApplicationRecord
  belongs_to :match
  has_and_belongs_to_many :players
  accepts_nested_attributes_for :players

  validates_length_of :players, minimum: 1
end
