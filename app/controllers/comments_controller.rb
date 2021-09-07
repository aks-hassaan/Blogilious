class CommentsController < ApplicationController
  before_action :find_commentable, only: :create
    
  def new
    @comment = Comment.new
  end

  def create
    @commentable.comments.build(comment_params)
    @commentable.save
       
        redirect_to blog_path(params[:comment][:parent_blog])
      end
    
      private
        def comment_params
            params[:comment].merge!(commenter: current_user.first_name + " " + current_user.last_name)
          params.require(:comment).permit(:commenter, :body)
        end

        def find_commentable
         
          if params[:comment_id]
             @commentable = Comment.find_by_id(params[:comment_id]) 
          else 
            @klass = (params[:comment][:commentable_type] || 'blog').camelize.constantize
          @commentable = @klass.find_by_id(params[:comment][:commentable_id])
           end
        end
    
        
    end