require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  get '/p2_turn' do
    @game = $game
    erb(:p2_turn)
  end

  get '/p2_attack' do
    @game = $game
    @game.attack(@game.player_1)
    erb(:p2_attack)
  end

  get '/p1_turn' do
    @game = $game
    erb(:p1_turn)
  end

  get '/p1_attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  run! if app_file == $0

end
