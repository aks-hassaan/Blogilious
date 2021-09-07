class FavoritesController < ApplicationController

    def create
        @fav = Favorite.new(favorite_params)
        if @fav.save 

           redirect_to blog_path(params[:blog_id]), alert: 'Blog has been favorited'
          else
            redirect_to blog_path(params[:blog_id]), alert: 'Something went wrong...*sad panda*'
          end
    end

    def destroy
        @fav =  Favorite.where(blog_id: params[:blog_id], user_id: params[:user_id]).first
        @fav.destroy
    
        redirect_to blog_path(params[:blog_id]) 
      end
    

    private 
    def favorite_params 
        
        params.permit(:user_id, :blog_id)
    end

end   
