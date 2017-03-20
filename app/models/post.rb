class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	mount_uploader :image, PostImageUploader
	def self.recent
		order(id: :desc)
	end
end
