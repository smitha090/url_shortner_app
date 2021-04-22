class StatsController < ApplicationController

  def index
    @links = Link.all
  end     

end    