class Disaster < ApplicationRecord
	belongs_to :category
	has_many :comments
	belongs_to :user
end
