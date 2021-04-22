class LinksController < ApplicationController
    def index
    end  
    
    def create
        @link = Link.new(link_params)
        if @link.original_url != ""
          @link.save
          redirect_to "/#{@link.short_url}"
        end      
    end   
    
    def show
        @link = Link.where(:short_url => params[:short_url]).last
        @link.update_attribute(:clicked, @link.clicked + 1)
    end

    def link_params
      params.require(:link).permit(:original_url)
    end
      
end        