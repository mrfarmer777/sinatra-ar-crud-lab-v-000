#Placeholder for a model

class Post < ActiveRecord::Base
  attr_accessor :name, :content

  POSTS = []
  def initialize(opts)
    @name=opts[:name]
    @content=opts[:content]
  end






end
