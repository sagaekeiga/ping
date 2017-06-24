module Api
  module V1
    class LaughtersController < ApplicationController
    skip_before_filter :verify_authenticity_token
      
      # encoding: utf-8

      def index
        @laughters = Laughter.all
        render json: @laughters
      end
      
      def detail
         params = request.body.read
         logger.debug("params")
         logger.debug(params)
         logger.debug("params")
         @laughter = Laughter.find_by(title: params) if !params.nil?
         render json: @laughter
      end
        
    end
  end
end