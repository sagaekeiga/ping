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
         @card = Card.find_by(name: params) if !params.nil?
         render json: @card
      end
        
    end
  end
end