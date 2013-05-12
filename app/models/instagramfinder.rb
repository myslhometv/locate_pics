class Instagramfinder 
  # attr_accessible :title, :body

  def self.geocode(address)
     Geocoder.configure( :timeout =>  10)
     results = Geocoder.search(address)
     if results == []
      #if location can't be decoded since Geocoder wont raise an exception
      #we handle it here and return empty results
      return results
     else
      geometry = results[0].data["geometry"]
      location = geometry["location"]
     end
  end

 def self.media_search(location)
   mashes = Instagram.media_search(location["lat"],location["lng"], options={:count=> 60})
 end

end
