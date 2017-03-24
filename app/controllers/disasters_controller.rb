class DisastersController < ApplicationController

	def index
		@disaster = Disaster.new
		@disasters = Disaster.all

		# @disasters = Disaster.page(params[:page]).per(3)
	end

	def new
		@disaster = Disaster.new
	end


	def create
		@disaster = Disaster.new(disaster_params)

		# @disaster.user = current_user

		 if @disaster.save
		 		@disaster = Disaster.create(params[:id])
				flash[:alert] = "成功建立"
				redirect_to disasters_url
 		else
		   render :action => :new
  		end
	end

	def show
 		@disaster = Disaster.find(params[:id])
 		@comment.disaster_id = @disaster.id
 		@comment = Comment.new

	end




	private

	def disaster_params
 		params.require(:disaster).permit(
 								:title, 
 								:content, 
 								:category_id

 								)
	end



end
