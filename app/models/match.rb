class Match < ApplicationRecord
  has_many :teams
  accepts_nested_attributes_for :teams
  validates_length_of :teams, maximum: 2, minimum: 2
end
