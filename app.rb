require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        go = PigLatinizer.new
        @answer = go.piglatinize(params[:user_phrase])
        erb :result
    end

end