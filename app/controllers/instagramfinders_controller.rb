class InstagramfindersController < ApplicationController
 
  #obviously breaking some rules because it is a simple app
  #will clean up design if necessary
  def search
   @location = "Browse Photos"
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

  def about
     @location = "About Us"
  end

 
end
