class CommentsController < ApplicationController



def new
	@concert = Concert.find(params[:concert_id])
    @comment = @concert.comments.new
    
	render 'new'
end


def create
	@concert = Concert.find(params[:concert_id])
	@comment = @concert.comments.new(comment_params)
		@comment.save
		redirect_to action: "index", controller: "concerts"
	end

	 private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
