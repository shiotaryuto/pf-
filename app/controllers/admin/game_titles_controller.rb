class Admin::GameTitlesController < ApplicationController
  def index
   @game_title = GameTitle.new
   @game_titles = GameTitle.all
  end

  def create
   @game_title = GameTitle.new(game_title_params)
   if @game_title.save
     redirect_to admin_game_titles_path
   else
     @game_titles = GameTitle.all
     render :index
   end
  end

  def edit
    @game_title = GameTitle.find(params[:id])
  end

  def update
    @game_title = GameTitle.find(params[:id])
    if @game_title.update(game_title_params)
      flash[:notice] = "変更が完了しました！"
      redirect_to admin_game_titles_path
    end
  end

  private

  def game_title_params
    params.require(:game_title).permit(:name)
  end
end
