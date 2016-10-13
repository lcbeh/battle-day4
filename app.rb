require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    erb(:play)
  end

  get '/attack' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    $game.attack(@player_2)
    erb :attack
  end


  run! if app_file == $0
end
