class HomeController < ApplicationController
  def index
    @blogs= Blog.where(:status => "Public")
  end
end
