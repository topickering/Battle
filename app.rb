require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player_1_name = params[:Player_1_Name]
    @player_2_name = params[:Player_2_Name]
    erb(:play)
  end

  run! if app_file == $0

end
