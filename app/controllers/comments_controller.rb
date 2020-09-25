class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
    @topic = Topic.find(params[:topic_id])
  end
  
  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build(comment_params)
    @comment.user_id = current_user.id
    
    if @comment.save
      redirect_to topics_path, success: 'コメントを残しました'
    else
      redirect_to topics_path, danger: 'コメントできませんでした'
    end
  end
  
private
  def comment_params
    params.require(:comment).permit(:content)
  end
end 

