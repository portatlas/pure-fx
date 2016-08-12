class FxtransController < ApplicationController

	def create
		@fxtran = Fxtran.new(fxtran_params)
		if @fxtran.save
			redirect_to root_path
		else
			render "new"
		end
	end

	private

	def fxtran_params
		params.require(:fxtran).permit(:status_id, :requestor_id, :base_amount, :base_curr_id, :quote_curr_id, :created_at, :updated_at)
	end

end
