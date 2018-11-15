require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.player_2)
    erb(:attack)
  end

  get '/p2_turn' do
    erb(:p2_turn)
  end

  get '/p2_attack' do
    @game.attack(@game.player_1)
    erb(:p2_attack)
  end

  get '/p2_risky_attack' do
    @game.risky_attack(@game.player_1)
    erb(:p2_attack)
  end

  get '/p2_sleep_attack' do
    @game.sleep_attack(@game.player_1)
    erb(:p2_attack)
  end

  get '/p1_turn' do
    erb(:p1_turn)
  end

  get '/p1_attack' do
    @game.attack(@game.player_2)
    erb(:attack)
  end

  get '/p1_risky_attack' do
    @game.risky_attack(@game.player_2)
    erb(:attack)
  end

  get '/p1_sleep_attack' do
    @game.sleep_attack(@game.player_2)
    erb(:attack)
  end

  run! if app_file == $0

end
