class WelcomeController < ApplicationController
  
  def index
    @news = Post.all.order('id DESC')
  end
  
end
