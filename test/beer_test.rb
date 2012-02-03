require "helper"

class BeerTest < Test::Unit::TestCase
  def setup
    @results = [{ :title => "Olde School", :link => "http://beeradvocate.com/beer/profile/64/6533"}]
    @beer    = Beer.new(@results[0][:link])
  end

  def test_parse
    assert_equal "", @beer.parse
  end
end
