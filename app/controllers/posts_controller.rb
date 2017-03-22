class PostsController < ApplicationController
	def index
		render json: Post.recent
	end

	def create
		Post.create(post_params)
		flash[:notice] = "Created post successful"
		#resultHtml = render_to_string partial: 'layouts/messages'
		#flash[:notice] = nil
		render json: {message: "OK"}
	end

	private

	def post_params
		params.require(:post).permit(:content, :image).merge({user_id: session[:user_id]})
	end
end