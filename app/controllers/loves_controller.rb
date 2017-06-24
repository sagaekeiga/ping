class LovesController < ApplicationController
    http_basic_authenticate_with name: "sagae", password: "s19930528"
    
    # encoding: utf-8

    def index
      @loves = Love.all
    end
    
    def new
        @love = Love.new
    end
    
    def create
     @love = Love.new(love_params)
     if @love.save
       redirect_to loves_path
     else
       render 'loves/new'
     end
    end
    
    def edit
      @love = Love.find(params[:id])
    end
    
    def destroy
      @love = Love.find(params[:id])
        if @love.delete
         flash[:success] = "deleted"
        end
        redirect_to loves_path
    end
    
    def show
      @love = Love.find(params[:id])
    end
    
    def update
        @love = Love.find(params[:id])
        @love.update(love_params)
        redirect_to loves_path
    end
    

    
      private
      
        def love_params
          params.require(:love).permit(:title, :content)
        end
end
