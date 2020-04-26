require 'pry'
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article = Article.new(params).save
    @article =
    erb :show
  end

  get '/articles' do
    erb :index
  end
  get '/articles/:id' do

  end

end
