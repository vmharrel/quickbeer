module QuickBeer
  class Beer
    attr :name, :score, :abv

    # Initialize a new Beer.
    #
    # id - The ID of the beer to initilize.
    def initialize(id)
      @values = JSON.parse(RestClient.get URI.encode("http://www.ratebeer.com/json/bff.asp?bd=#{id}&k=#{settings.api_key}"))[0]

      @name  = @values["BeerName"]
      @score = @values["OverallPctl"]
      @abv   = @values["Alcohol"]
    end
  end
end
