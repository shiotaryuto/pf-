class Public::HomesController < ApplicationController
  def top
    @games = Game.all
  end
end
