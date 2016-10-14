require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    if @game.opponent_of(@game.current_turn).hitpoints <= 0 
      redirect '/lose'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    erb :attack
  end

  get '/lose' do
    erb :lose
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0
end
