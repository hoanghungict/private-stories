class VisitorsController < ApplicationController
	def index
		if check_pincode
			@posts = Post.includes(:comments).recent	
		else
			render '_pincode_input'
		end
	end

	def pincode
		pincode = params[:pincode]
		if user = User.find_by(pin_code: pincode)
			session[:user_id] = user.id
		else
			flash[:error] = "Wrong pincode"
		end
		redirect_to action: 'index'
	end

	private
	def check_pincode
		return session[:user_id]
	end
end
