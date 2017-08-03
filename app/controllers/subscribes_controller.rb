class SubscribesController < ApplicationController
	before_action :authenticate_admin!, only: [:index, :show]

	def index
		@subscribes = Subscribe.all.order(created_at: :desc)
	end

	def show

	end

	def new
		@subscribe = Subscribe.new
		@subscribe.broker_checkboxes.build
	end

	def create
		@subscribe = Subscribe.new(subscribe_params)
		respond_to do |format|
			if @subscribe.save
				format.js
			else
				puts '********* ERROR ********'
				render 'new'
			end
		end
	end

	private

		def subscribe_params
			params.require(:subscribe).permit(:firstname, :lastname, :email, :phone, :company, :number_of_agents_id, broker_checkboxes_attributes: [:agent_lead, :boom_town, :brivity, :commision_inc, :lone_wolf, :real_geeks, :rethink, :real_webmaster, :top_producer, :voicepad, :vulcan7, :proquest, :other])
		end

end
