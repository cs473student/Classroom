class CommentsController < ApplicationController
	
	before_filter :load_loginseating, :except => :destroy
	before_filter :authenticate, :only => :destroy
	
	
	def create
		@comment = @loginseatings.comments.new(params[:comment])
		if @comment.save
			redirect_to @loginseatings, :notice => 'Thanks for your comment'
		else
			redirect_to @loginseatings, :alert => 'Unable to add comment'
		end
	end
	
	def destroy
		@loginseating = current_user.loginseating.find(params[:article_id])
		@comment = @loginseatings.comments.find(params[:id])
		@comment.destroy
		redirect_to @loginseatings, :notice => 'Comment deleted'
	end
	
	private
		def load_loginseating
			@loginseatings = @loginseatings.find(params[:id])

end
