require 'test_helper'

class AmbulanceTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ambulance.new.valid?
  end
end
