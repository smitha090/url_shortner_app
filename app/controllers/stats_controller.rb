class StatsController < ApplicationController

  def index
    @links = Link.all
    access_token = "1dbc43d6e98792"
    handler = IPinfo::create(access_token)
    @links.each do |l|
      @details = handler.details("106.217.51.116")
      @ip_address = @details.ip
      @countries = @details.country_name
    end  
      
  end     

end    