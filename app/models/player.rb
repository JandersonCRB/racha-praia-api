class Player < ApplicationRecord
	has_and_belongs_to_many :teams

	validates :name, presence: true, uniqueness: true
end
