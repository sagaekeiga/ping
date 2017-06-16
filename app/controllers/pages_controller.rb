class PagesController < ApplicationController
  def index
  end
  
  def ping
    p addr = params[:ping][:ping]
    
    p pinger = Net::Ping::External.new(addr)
    
    ## Pingが通るかどうかテストします
    if pinger.ping?
      @ping = 'reachable'
    else
      @ping = 'unreachable'
    end
    redirect_to root_path(id: @ping)
  end
end
