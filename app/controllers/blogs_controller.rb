class BlogsController < ApplicationController
  

  def index
  end
  
def new
  @blog= Blog.new
end

def create
  @blog = Blog.new(blog_params)

    if @blog.save
    
      redirect_to @blog
    else
      render :new
    end
end

def show 
  @blog = Blog.find(params[:id])
end


def edit 
@blog = Blog.find (params[:id])
end

def update
  @blog =Blog.find(params[:id])
  if @blog.update(blog_params)
    redirect_to @blog
  else
    render :edit
  end
end

private
    def blog_params
      params[:blog].merge!(user_id: current_user.id)
      params.require(:blog).permit(:title, :body, :picture, :status, :user_id)

    end

end



