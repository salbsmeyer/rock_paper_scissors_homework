class GameController < ApplicationController

  def move
     @all_moves = Move.all

    @user_move = params["move"]

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @outcome = "tied"
    elsif @user_move == "paper" && @computer_move == "rock"
      @outcome = "won"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @outcome = "lost"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @outcome = "lost"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @outcome = "won"
    elsif @user_move == "rock" && @computer_move == "paper"
      @outcome = "lost"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @outcome = "won"
    end

    m = Move.new
    m.user_move = @user_move
    m.computer_move = @computer_move
    if @outcome == "won"
      m.user_win = 1
      m.computer_win = 0
    elsif @outcome == "lost"
      m.user_win = 0
      m.computer_win = 1
    else
      m.user_win = 0
      m.computer_win = 0
    end

    m.save


    render("move.html.erb")
  end

end
