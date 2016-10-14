require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = @@game
  end

  get '/' do
  erb(:index)
  end

  post '/names' do
    @@game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    # @game = @@game
    erb(:play)
  end

  post '/attack' do
    # @game = @@game
    @@game.attack(@game.opponent_of(@game.current_turn))
    if @game.opponent_of(@game.current_turn).hitpoints == 0
      redirect '/lose'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    # @game = @@game
    erb :attack
  end

  get '/lose' do
    # @game = @@game
    erb :lose
  end

  post '/switch-turns' do
    @@game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0
end
