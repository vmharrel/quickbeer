module QuickBeer
  class Query
    attr_accessor :results

    # Initiate new query via Google CSE.
    #
    # Fetches query as JSON then calls format to make
    # the query more Ruby friendly.
    def initialize(query)
      @results = format(RestClient.get URI.encode(
        "https://www.googleapis.com/customsearch/v1?key=#{settings.api_key}&cx=#{settings.cx_id}=#{query}"
      ))
    end

    # Remove duplicate query results.
    #
    # Returns unique results as an array of hashes.
    def unique
      @results.inject([]) { |container, value| container.push(value) unless container.include?(value) }
    end

    private

    # Format returned query results.
    #
    # Returns results as an array of hashes.
    def format(results)
      Array.new.tap do |collection|
        JSON.parse(results)["items"].each do |item|
          collection << { :title => item["title"], :link => item["link"] }
        end
      end
    end
  end
end
