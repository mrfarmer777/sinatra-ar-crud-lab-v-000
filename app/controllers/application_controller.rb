
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get "/posts/new" do
    erb :new
  end

  post "/posts" do
    #! Not sure if the create method is working yet
    @post=Post.create(params[:name],params[:content])
    
  end

  get "/posts" do
    #? Does active record have its own all method or is the one we made?
    @posts=Post.all
    erb :index
  end
end
