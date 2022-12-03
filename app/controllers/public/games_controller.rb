class Public::GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    if @game.save
      flash[:notice] = "You have created book successfully."
      redirect_to public_top_path
    end
    @games = Game.all
  end

  def show
   @game = Game.find(params[:id])
   @post_comment = PostComment.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game_title.update(game_params)
      flash[:notice] = "変更が完了しました！"
      redirect_to public_game_path(@game.id)
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to public_top_path
  end


  private
  def game_params
  params.require(:game).permit(:title, :body, :user_id, :game_title_id)
  end
end
