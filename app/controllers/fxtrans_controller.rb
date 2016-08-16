class FxtransController < ApplicationController

	def new
		@fxtran = Fxtran.new
	end

	def index
		# if request.xhr?
		# 	@fxtrans = Fxtran.where(status_id: '1')
		# 	binding.pry
		# else
			@fxtrans = Fxtran.where(status_id: '1')
			# session[:lat] = params[:lat]
			# binding.pry
		# end
	end

	def create
		@fxtran = Fxtran.new(fxtran_params)
		@fxtran.lat = cookies[:latitude]
		@fxtran.lng = cookies[:longitude]
		@fxtran.accry = cookies[:accuracy]
		if @fxtran.save
			redirect_to root_path
		else
			render "new"
		end
	end

	private

	def fxtran_params
		params.require(:fxtran).permit(:status_id, :requestor_id, :base_amount, :base_curr_id, :quote_curr_id, :city, :lat, :lng, :accry, :created_at, :updated_at)
	end

end
