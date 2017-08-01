class SubscribesController < ApplicationController
	before_action :authenticate_admin!, only: [:index, :show]

	def index
		@subscribes = Subscribe.all.order(created_at: :desc)
	end

	def show

	end

	def new
		@subscribe = Subscribe.new
	end

	def create
		@subscribe = Subscribe.new(subscribe_params)
		respond_to do |format|
			if @subscribe.save
				format.js
			else
				puts '********* ERROR ********'
			end
		end
	end

	private

		def subscribe_params
			params.require(:subscribe).permit(:name, :email, :phone, :company)
		end

end
