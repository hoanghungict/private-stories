class Comment < ApplicationRecord
	belongs_to :post
	belongs_to :user
	def self.recent
		order(id: :desc)
	end
end
