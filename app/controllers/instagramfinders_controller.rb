class InstagramfindersController < ApplicationController
 

  def search
   
  end

  def showpics
     @location = params[:r]
     @geolocation =  Instagramfinder.geocode(params[:r])
    if @geolocation == []
      #if no lat & long available then no photos to display
      @mashes = []
    else
     @mashes = Instagramfinder.media_search(@geolocation)
    end
  end

 
end
