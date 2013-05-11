class Instagramfinder 
  # attr_accessible :title, :body

  def self.geocode(address)
     Geocoder.configure( :timeout =>  10)
     results = Geocoder.search(address)
     geometry = results[0].data["geometry"]
     location = geometry["location"]
  end

 def self.media_search(location)
   mashes = Instagram.media_search(location["lat"],location["lng"], options={:count=> 60})
 end

end
