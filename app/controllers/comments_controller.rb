class CommentsController < ApplicationController

	def create
		@disaster = Disaster.find(params[:disaster_id])
		@comment = @disaster.comments.create(params[:comment].permit(:comment_content))
		redirect_to disaster_path(@disaster)
	end
end
