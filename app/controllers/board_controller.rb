class BoardController < ApplicationController
  def index
  	@board = Board.new
  	@board.save
 	@board.seed
  end
end
