class CommentsController < ApplicationController
	def index
	
	end

	def create
		Comment.create(comment_params)
		render json: {message: "OK"}
	end

	private

	def comment_params
		params.permit(:content, :post_id).merge({user_id: 1})
	end
end