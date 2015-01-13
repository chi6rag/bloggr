class CommentsController < ApplicationController
  def create
    comment = Comment.new(params_comment)
    comment.article_id = params[:article_id]
    comment.save
    redirect_to article_path(comment.article)
  end

  private
    def params_comment
      params.require(:comment).permit(:author_name, :body);
    end
end