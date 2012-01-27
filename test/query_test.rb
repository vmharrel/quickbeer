require "helper"

class QueryTest < Test::Unit::TestCase
  def test_get
    assert_match /Olde School Barleywine/, QuickBeer::Query.beer("Olde School")
  end
end
