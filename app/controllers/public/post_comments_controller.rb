class Public::PostCommentsController < ApplicationController

  def create
    @game = Game.find(params[:game_id])
    @comment = current_user.post_comments.new(post_comment_params)
    @comment.game_id = @game.id
    @comment.save
    redirect_to public_game_path(@game.id)
  end

   def destroy
    @game = Game.find(params[:game_id])
    PostComment.find(params[:id]).destroy
    redirect_to public_game_path(@game.id)
   end

   private

  def post_comment_params
    params.require(:post_comment).permit(:comment, :user_id, :game_id)
  end
end
