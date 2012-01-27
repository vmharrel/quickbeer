module QuickBeer
  class Query
    class << self
      def beer(query)
        RestClient.get URI.encode("https://www.googleapis.com/customsearch/v1?key=#{settings.api_key}&cx=#{settings.cx_id}=#{query}")
      end
    end
  end
end
