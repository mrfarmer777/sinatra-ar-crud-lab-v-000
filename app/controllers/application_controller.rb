
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
    #! Create method is part of ActiveRecord already, silly!
    Post.create(params)
    redirect '/posts'
  end

  get "/posts" do
    #? Does active record have its own all method or is the one we made?    
    erb :index
  end
end
