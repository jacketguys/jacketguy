class AdminInquiriesController < ApplicationController

	def index
		@inquiries = Inquiry.all
	end

	def show
		@inquiry = Inquiry.find(params[:id])
	end

	def create
		@inquiry = Inquiry.find(params[:id])
		if @inquiry.update(inquiry_params)
			redirect_to admins_inquiry_path(@inquiry)
		else
			render :show
		end
		# 　SampleMailer.send_when_create(@user).deliver
	end

		private

	def inquiry_params
		params.require(:inquiry).permit(:end_user_name, :subject, :content, :reply)
	end

end
