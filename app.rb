require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @translation = PigLatinizer.new(param[:user_phrase])
    erb :results
  end
end
