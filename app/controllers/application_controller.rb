
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :show
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    erb :show
  end

  get '/articles/:id' do

  end

end
