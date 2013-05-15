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
   mashes = Instagram.media_search(location["lat"],location["lng"], options={:count=> 60, :min_timestamp=> 1367726400} )
 end

 def self.popular()
   popular = [{name:"Suvarnabhumi Airport (BKK)",
              address:"Suvarnabhumi Airport (BKK),Bangkok",
              location:"Bangkok, Thailand"
              },
              {name:"Siam Paragon shopping mall",
              address:"Siam Paragon shopping mall, Bangkok",
              location:"Bangkok, Thailand"
              },
              {name:"Disneyland Park",
              address:"Disneyland Park Anaheim, California",
              location:"Anaheim, California"
              },
              {name:"Times Square",
              address:"times square ny",
              location:"New York"
              },
              {name:"AT&T Park",
              address:"24 Willie Mays Plaza  San Francisco, CA 94107",
              location:"San Francisco"
              },
              {name:"Los Angeles International Airport (LAX)",
              address:"Los Angeles International Airport (LAX)",
              location:"Los Angeles"
              },
              {name:"Dodger Stadium",
              address:"Dodger Stadium, Los Angeles",
              location:"Los Angeles"
              },
              {name:"Eiffel Tower",
              address:"Eiffel Tower Paris",
              location:"Paris"
              },
              {name:"Staples Center",
              address:"Staples Center in Los Angeles",
              location:"Los Angeles"
              },
              {name:"Santa Monica Pier",
              address:"Santa Monica Pier Los Angeles",
              location:"Los Angeles"
              },
              {name:"Disney Magic Kingdom",
              address:"Lake Buena Vista, FL 32830",
              location:"Lake Buena Vista, Florida"
              },
              {name:"Trafalgar Square",
              address:"Trafalgar Square London",
              location:"London"
              },
              {name:"Grachtengordel Canals",
              address:"Grachtengordel Canals, Amsterdam",
              location:"Amsterdam"
              },
              {name:"Passeig De Gracia",
              address:"Passeig De Gracia, Barcelona",
              location:"Barcelona"
              },
              {name:"Pombaline Lisbon",
              address:"Pombaline Lisbon, Lisbon",
              location:"Lisbon"
              },
              {name:"The White City",
              address:"The White City, Tel Aviv",
              location:"Tel Aviv"
              },
              {name:"The Grand Bazaar",
              address:"The Grand Bazaar Istanbul",
              location:"Istanbul"
              },
              {name:"Grand Central Station",
              address:"grand central ny",
              location:"New York"
              },
              {name:"The Tube",
              address:"The Tube London",
              location:"London"
              },
              {name:"Golden Gate Bridge",
              address:"Golden Gate Bridge San Francisco",
              location:"San Francisco "
              },
              {name:"Universal Studios",
               address:"Universal Studios  Los Angeles, CA, USA",
               location:"Los Angeles"
               },
              {name:"Tivoli Gardens",
               address:"Tivoli Gardens Copenhagen, Denmark",
               location:"Copenhagen"
               },
              {name:"Ipanema",
               address:"Ipanema, Rio",
               location:"Rio"
               }]

     
 end

 def self.more_popular
   more_popular = [{name:"Notre Dame de Paris",
                       address:"Notre Dame de Paris Paris, France",
                      location:"Paris"
                      },
                      {name:"Tokyo Disneyland",
                       address:"Tokyo Disneyland Tokyo, Japan",
                      location:"Tokyo"
                      }]
 end

end
