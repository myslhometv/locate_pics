class InstagramfindersController < ApplicationController
 

  def search
   
  end

  def showpics
     @location = params[:r]
     @geolocation =  Instagramfinder.geocode(params[:r])
     @mashes = Instagramfinder.media_search(@geolocation)
  end

 
end
