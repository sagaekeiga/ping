class LaughtersController < ApplicationController
    http_basic_authenticate_with name: "sagae", password: "s19930528"
    
    # encoding: utf-8

    def index
      @laughters = Laughter.all
    end
    
    def new
        @laughter = Laughter.new
    end
    
    def create
     @laughter = Laughter.new(laughter_params)
     if @laughter.save
       redirect_to laughters_path
     else
       render 'laughters/new'
     end
    end
    
    def edit
      @laughter = Laughter.find(params[:id])
    end
    
    def destroy
      @laughter = Laughter.find(params[:id])
        if @laughter.delete
         flash[:success] = "deleted"
        end
        redirect_to laughters_path
    end
    
    def show
      @laughter = Laughter.find(params[:id])
    end
    
    def update
        @laughter = Laughter.find(params[:id])
        @laughter.update(laughter_params)
        redirect_to laughters_path
    end
    

    
      private
      
        def laughter_params
          params.require(:laughter).permit(:title, :content)
        end
end
