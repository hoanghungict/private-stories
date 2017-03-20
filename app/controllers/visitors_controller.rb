class VisitorsController < ApplicationController
	def index
		@posts = Post.includes(:comments).recent
	end
end
