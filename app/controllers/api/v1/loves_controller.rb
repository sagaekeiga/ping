module Api
  module V1
    class LovesController < ApplicationController
    skip_before_filter :verify_authenticity_token
      
      def index
        @loves = Love.all
        render json: @loves
      end
      
      def detail
         params = request.body.read
         logger.debug("params")
         logger.debug(params)
         logger.debug("params")
         @love = Love.find_by(id: params) if !params.nil?
         render json: @love
      end
        
    end
  end
end