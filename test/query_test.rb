require "helper"

class QueryTest < Test::Unit::TestCase
  def setup
    @query = QuickBeer::Query.new("Olde Sch")
  end

  def test_results
    assert_match /Olde School Barleywine/, "#{@query.results}"
  end

  def test_unique
    assert_match /Olde School Barleywine/, "#{@query.unique}"
  end
end
