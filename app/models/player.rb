class Player < ApplicationRecord
	validates :nickname, presence: true
end
