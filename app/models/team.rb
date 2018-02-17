class Team < ApplicationRecord
  belongs_to :Match
  has_many :Players
end
