require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions
  STARTING_HIT_POINTS = 60


  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    #@player_1_name = player1.name
    #@player_2_name = player2.name
    #@player_1_hp = @game.player1.hp
    #@player_2_hp = @game.player2.hp
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    #Game.new(@player1, @player2).attack(@player2)
    #@player_1_name = @game.player1.name
    #@player_2_name = @game.player2.name
    #@player_1_hp = @game.player1.hp
    #@player_2_hp = @game.player2.hp
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
