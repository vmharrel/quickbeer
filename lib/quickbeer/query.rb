module QuickBeer
  class Query
    attr :results

    # Initialize a new Query.
    #
    # query - The beer you're looking for.
    def initialize(query)
      @results = JSON.parse(RestClient.get URI.encode("http://www.ratebeer.com/json/bff.asp?bn=#{query}&k=#{settings.api_key}"))
    end
  end
end
