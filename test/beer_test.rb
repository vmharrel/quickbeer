require "helper"

class BeerTest < Test::Unit::TestCase
  def setup
    @results = [{ :BeerName => "Dogfish Head Olde School Barleywine", :BeerID => "17557"}]
    @beer    = Beer.new(@results[0][:BeerID])
  end

  def test_name
    assert_match /Olde School Barleywine/, @beer.name
  end

  def test_score
    assert_equal 98, @beer.score.round
  end

  def test_abv
    assert_equal 15, @beer.abv
  end
end
