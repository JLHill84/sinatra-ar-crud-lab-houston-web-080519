
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @articles = Article.all
    erb :index
  end
  
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  
  get '/articles/new' do
    @articles = Article.new
    erb :new
  end
  
  get '/articles/:id' do
    
  end
  
  get '/articles/:id/edit' do
    erb :edit
  end
  
  post '/articles' do
    Article.new(params)
    erb :show
  end
  
  patch '/articles/:id' do
    
  end
end
